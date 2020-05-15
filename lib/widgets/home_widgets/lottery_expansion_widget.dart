import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lotery_flutter/routes/lottery_route.dart';
import 'package:lotery_flutter/stores/home_store.dart';
import 'package:lotery_flutter/widgets/home_widgets/winning_number_widget.dart';

class LotteryExpansionWidget extends StatelessWidget {
  final String lotteryIcon;
  final String lotteryName;
  final String contestNumber;
  final String nextEstimate;
  final Color backgroundColor;
  final Color color;
  final List<dynamic> lotteryNumbers;

  final LotteryRoute route = LotteryRoute();

  LotteryExpansionWidget({
    this.lotteryIcon,
    this.lotteryName,
    this.contestNumber,
    this.nextEstimate,
    this.backgroundColor = Colors.grey,
    this.color = Colors.grey,
    this.lotteryNumbers = const [],
  });

  final HomeStore control = HomeStore();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: control.changeExpanded, // dinamico
      child: Observer(builder: (_) {
        return AnimatedContainer(
          width: double.infinity,
          color: this.backgroundColor, // dinamico
          height: control.isExpanded
              ? (this.lotteryName == 'LOTOMANIA'
                  ? 400
                  : (this.lotteryName == 'LOTOFACIL' ? 360 : 275))
              : 50, // dinamico
          duration: Duration(milliseconds: 300),
          child: Wrap(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      this.lotteryIcon,
                      height: 30,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          this.lotteryName, // dinamico
                          style: TextStyle(
                            fontSize: 20,
                            color: this.color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: control.isExpanded
                          ? Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black38,
                            )
                          : Icon(
                              Icons.keyboard_arrow_up,
                              color: Colors.black38,
                            ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: this.lotteryName == 'LOTOMANIA' ||
                            this.lotteryName == 'LOTOFACIL'
                        ? <Widget>[
                            Column(
                              children: <Widget>[
                                ...lotteryNumbers.map((numbersRow) {
                                  return Row(
                                    children: <Widget>[
                                      ...numbersRow.map((number) {
                                        return WinningNumberWidget(
                                          number: number,
                                          color: this.color,
                                        );
                                      }),
                                    ],
                                  );
                                }).toList(),
                              ],
                            ),
                          ]
                        : <Widget>[
                            ...lotteryNumbers.map((number) {
                              return WinningNumberWidget(
                                number: number,
                                color: this.color,
                              );
                            }).toList(),
                          ]),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(2),
                        child: Text(
                          'ACUMULOU!', // dinamico
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: this.color,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white54,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(2),
                        child: Row(children: <Widget>[
                          Container(
                            child: Text(
                              'DATA:',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              '12/05/2020', // dinamico
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white54,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(2),
                        child: Row(children: <Widget>[
                          Container(
                            child: Text(
                              'CONCURSO:',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              this.contestNumber, // dinamico
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.all(10),
                          height: 30,
                          child: RaisedButton(
                            onPressed: () {
                              route.nextPage(context, this.lotteryName);
                            },
                            child: Text(
                              'CONFIRA O RESULTADO',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            color: Colors.amber,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
