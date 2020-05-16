import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lotery_flutter/models/federal_lottery_model.dart';
import 'package:lotery_flutter/models/lottery_type_enum.dart';
import 'package:lotery_flutter/routes/lottery_route.dart';
import 'package:lotery_flutter/stores/home_store.dart';
import 'package:lotery_flutter/widgets/home_widgets/federal_result_widget.dart';
import 'default_result_widget.dart';
import 'duplasena_result_widget.dart';

class LotteryExpansionWidget extends StatelessWidget {
  final double height;
  final String lotteryIcon;
  final String lotteryName;
  final String contestNumber;
  final String nextEstimate;
  final Color backgroundColor;
  final Color color;
  final List<String> lotteryNumbers;
  final List<String> firstWinningNumbers;
  final List<String> secondWinningNumbers;
  final bool rowLimited;
  final bool defaultLottery;
  final LotteryTypeEnum lotteryType;
  final List<FederalLotteryModel> federalList;

  final LotteryRoute route = LotteryRoute();

  LotteryExpansionWidget({
    this.height,
    this.lotteryIcon,
    this.lotteryName,
    this.contestNumber,
    this.nextEstimate,
    this.backgroundColor = Colors.grey,
    this.color = Colors.grey,
    this.lotteryNumbers = const [],
    this.firstWinningNumbers = const [],
    this.secondWinningNumbers = const [],
    this.rowLimited = false,
    this.defaultLottery = true,
    this.lotteryType,
    this.federalList,
  });

  Widget _lotteryType(LotteryTypeEnum lotteryType) {
    switch (lotteryType.toString()) {
      case 'LotteryTypeEnum.duplasena':
        return DuplaSenaResultWidget(
          firstWinningNumbers: this.firstWinningNumbers,
          secondWinningNumbers: this.secondWinningNumbers,
          color: this.color,
        );
        break;
      case 'LotteryTypeEnum.federal':
        return FederalResultWidget(
          federalList: this.federalList,
        );
        break;
      default:
        return DefaultResultWidget(
          lotteryNumbers: this.lotteryNumbers,
          rowLimited: this.rowLimited,
          color: this.color,
        );
    }
  }

  final HomeStore control = HomeStore();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: control.changeExpanded,
      child: Observer(builder: (_) {
        return AnimatedContainer(
          width: double.infinity,
          height: this.control.isExpanded ? this.height ?? 275 : 50,
          decoration: BoxDecoration(
            color: this.backgroundColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
          ),
          duration: Duration(milliseconds: 300),
          child: Wrap(
            alignment: WrapAlignment.center,
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
                          this.lotteryName,
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
              _lotteryType(this.lotteryType),
              Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      this.lotteryType.toString() != 'LotteryTypeEnum.federal'
                          ? Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(2),
                              child: Text(
                                'ACUMULOU!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: this.color,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : Container(),
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
                              '12/05/2020',
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
                              this.contestNumber,
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
