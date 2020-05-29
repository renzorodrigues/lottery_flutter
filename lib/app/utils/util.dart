import 'package:basic_utils/basic_utils.dart';

class Util {
  List<String> winningNumbersToList(String winningNumbers) {
    var resultadoList = winningNumbers.split('-');
    return resultadoList;
  }

  List<String> checkNumbers(List<String> winningNumbers) {
    var myNumbers = [];
    List<String> fittedNumbers = [];

    winningNumbers.forEach((w) {
      if (myNumbers.contains(int.parse(w))) {
        fittedNumbers.add(w);
      }
    });

    if (winningNumbers.length == 6 && fittedNumbers.length == 5) {
      //print('Excelente! Você acertou 5 números');
      return fittedNumbers;
    }

    if (winningNumbers.length == 6 && fittedNumbers.length == 6) {
      //print('Caralho! Você acertou 6 números');
      return fittedNumbers;
    }

    return [];
  }

  String currencyFormat(String value) {
    if (value == null || value.isEmpty) {
      return '';
    }

    var formattedValue = '';
    var splitted = value.split('');

    if (splitted.contains(',')) {
      return 'R\$$value';
    }

    if (splitted.contains('.')) {
      var parts = splitted.join().split('.');
      formattedValue = StringUtils.reverse(parts[0]);
    } else {
      formattedValue = StringUtils.reverse(value);
    }

    formattedValue =
        StringUtils.addCharAtPosition(formattedValue, '.', 3, repeat: true);
    formattedValue = StringUtils.reverse(formattedValue);
    formattedValue = 'R\$$formattedValue,00';

    return formattedValue;
  }

  String toMonthString(int month) {
    switch (month) {
      case 1:
        return 'JANEIRO';
        break;
      case 2:
        return 'FEVEREIRO';
        break;
      case 3:
        return 'MARÇO';
        break;
      case 4:
        return 'ABRIL';
        break;
      case 5:
        return 'MAIO';
        break;
      case 6:
        return 'JUNHO';
        break;
      case 7:
        return 'JULHO';
        break;
      case 8:
        return 'AGOSTO';
        break;
      case 9:
        return 'SETEMBRO';
        break;
      case 10:
        return 'OUTUBRO';
        break;
      case 11:
        return 'NOVEMBRO';
        break;
      default:
        return 'DEZEMBRO';
    }
  }
}
