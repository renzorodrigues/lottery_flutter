import 'package:flutter/material.dart';
import 'package:lotery_flutter/widgets/home_widgets/winning_number_widget.dart';

class DuplaSenaResultWidget extends StatelessWidget {
  final List<String> firstWinningNumbers;
  final List<String> secondWinningNumbers;
  final Color color;

  DuplaSenaResultWidget({
    this.firstWinningNumbers,
    this.secondWinningNumbers,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.center,
      child: Column(children: <Widget>[
        Container(
          width: 200,
          alignment: Alignment.centerLeft,
          child: Text(
            '1º SORTEIO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Wrap(
          children: <Widget>[
            ...firstWinningNumbers.map((number) {
              return WinningNumberWidget(
                number: number,
                color: this.color,
              );
            }).toList(),
          ],
        ),
        Container(
          width: 200,
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            '2º SORTEIO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Wrap(
          children: <Widget>[
            ...secondWinningNumbers.map((number) {
              return WinningNumberWidget(
                number: number,
                color: this.color,
              );
            }).toList(),
          ],
        ),
      ]),
    );
  }
}
