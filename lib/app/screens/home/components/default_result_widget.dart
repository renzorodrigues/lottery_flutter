import 'package:flutter/material.dart';
import 'package:lotery_flutter/app/screens/home/stores/lotteries_store.dart';
import 'package:lotery_flutter/app/utils/util.dart';
import 'winning_number_widget.dart';

class DefaultResultWidget extends StatelessWidget {
  final List<String> lotteryNumbers;
  final bool rowLimited;
  final Color color;
  final LotteriesStore store;
  final Util util = Util();

  DefaultResultWidget({
    this.store,
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
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          ...lotteryNumbers.map((number) {
            return WinningNumberWidget(
              number: number,
              color: this.color,
              border: store.isAllLoaded
                  ? util.checkNumbers(this.lotteryNumbers).contains(number)
                      ? true
                      : false
                  : Colors.transparent,
            );
          }).toList(),
        ],
      ),
    );
  }
}
