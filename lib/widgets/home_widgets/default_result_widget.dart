import 'package:flutter/material.dart';
import 'package:lotery_flutter/widgets/home_widgets/winning_number_widget.dart';

class DefaultResultWidget extends StatelessWidget {
  final List<String> lotteryNumbers;
  final bool rowLimited;
  final Color color;

  DefaultResultWidget({
    this.lotteryNumbers,
    this.rowLimited,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: rowLimited ? 250 : 400,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.center,
      child: Wrap(
        children: <Widget>[
          ...lotteryNumbers.map((number) {
            return WinningNumberWidget(
              number: number,
              color: this.color,
            );
          }).toList(),
        ],
      ),
    );
  }
}
