import 'package:lotery_flutter/models/lottery_model.dart';

class LotteryService {
  LotteryModel lotteryModel = LotteryModel();
  List<List<String>> get lotoMania => listType('lotomania', 4);
  List<List<String>> get lotoFacil => listType('lotofacil', 3);

  List<List<String>> listType(String lottery, int qtd) {
    List<List<String>> listOfLists = List<List<String>>();
    int start = 0;
    int end = 5;

    var list = lottery == 'lotomania'
        ? lotteryModel.lotoMania
        : lotteryModel.lotoFacil;

    for (var i = 0; i < qtd; i++) {
      listOfLists.add(list.getRange(start, end).toList());
      start += 5;
      end += 5;
    }
    return listOfLists;
  }
}
