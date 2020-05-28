import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lotery_flutter/app/models/lottery_type_enum.dart';
import 'package:lotery_flutter/app/models/megasena_model.dart';
import 'package:lotery_flutter/app/screens/home/stores/lotteries_store.dart';
import 'package:lotery_flutter/app/utils/util.dart';
import 'lottery_expansion_widget.dart';

class ContentWidget extends StatelessWidget {
  final LotteriesStore store;
  final MegasenaModel megasena = MegasenaModel();
  final Util util = Util();

  ContentWidget(this.store);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return store.isAllLoaded
          ? Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                    ),
                    LotteryExpansionWidget(
                      store: store,
                      lotteryIcon: 'assets/images/megasena.png',
                      lotteryName: 'MEGA-SENA',
                      contestNumber:
                          store.isAllLoaded ? store.megasenaModel.concurso : '',
                      winnersNumbers: store.isAllLoaded
                          ? store.megasenaModel.nrGanhadores
                          : 0,
                      award: store.isAllLoaded
                          ? store.megasenaModel.premioAtual
                          : '',
                      nextEstimate: store.isAllLoaded
                          ? store.megasenaModel.premioEstimado
                          : '',
                      backgroundColor: Colors.green[100],
                      color: Colors.green[600],
                      lotteryNumbers: store.isAllLoaded
                          ? util.winningNumbersToList(
                              store.megasenaModel.resultado)
                          : [],
                      date: store.isAllLoaded
                          ? store.megasenaModel.data
                          : DateTime.now(),
                      nextContestDate: store.isAllLoaded
                          ? store.megasenaModel.dataProximoConcurso
                          : DateTime.now(),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.green[100],
                    ),
                    LotteryExpansionWidget(
                      store: store,
                      height: 375,
                      lotteryIcon: 'assets/images/lotofacil.png',
                      lotteryName: 'LOTOFACIL',
                      contestNumber: store.isAllLoaded
                          ? store.lotofacilModel.concurso
                          : '',
                      winnersNumbers: store.isAllLoaded
                          ? store.lotofacilModel.nrGanhadores
                          : 0,
                      nextEstimate: store.isAllLoaded
                          ? store.lotofacilModel.premioEstimado
                          : '',
                      backgroundColor: Colors.purple[100],
                      color: Colors.purple[600],
                      lotteryNumbers: store.isAllLoaded
                          ? util.winningNumbersToList(
                              store.lotofacilModel.resultado)
                          : [],
                      rowLimited: true,
                      date: store.isAllLoaded
                          ? store.lotofacilModel.data
                          : DateTime.now(),
                      nextContestDate: store.isAllLoaded
                          ? store.megasenaModel.dataProximoConcurso
                          : DateTime.now(),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.purple[100],
                    ),
                    LotteryExpansionWidget(
                      store: store,
                      lotteryIcon: 'assets/images/quina.png',
                      lotteryName: 'QUINA',
                      contestNumber:
                          store.isAllLoaded ? store.quinaModel.concurso : '',
                      winnersNumbers:
                          store.isAllLoaded ? store.quinaModel.nrGanhadores : 0,
                      nextEstimate: store.isAllLoaded
                          ? store.quinaModel.premioEstimado
                          : '',
                      backgroundColor: Colors.deepPurple[100],
                      color: Colors.deepPurple[600],
                      lotteryNumbers: store.isAllLoaded
                          ? util
                              .winningNumbersToList(store.quinaModel.resultado)
                          : [],
                      date: store.isAllLoaded
                          ? store.quinaModel.data
                          : DateTime.now(),
                      nextContestDate: store.isAllLoaded
                          ? store.quinaModel.dataProximoConcurso
                          : DateTime.now(),
                    ),
                  ],
                ),
                Stack(children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.deepPurple[100],
                  ),
                  LotteryExpansionWidget(
                    store: store,
                    height: 417,
                    lotteryIcon: 'assets/images/lotomania.png',
                    lotteryName: 'LOTOMANIA',
                    contestNumber:
                        store.isAllLoaded ? store.lotomaniaModel.concurso : '',
                    winnersNumbers: store.isAllLoaded
                        ? store.lotomaniaModel.nrGanhadores
                        : 0,
                    nextEstimate: store.isAllLoaded
                        ? store.lotomaniaModel.premioEstimado
                        : '',
                    backgroundColor: Colors.orange[100],
                    color: Colors.orange[600],
                    lotteryNumbers: store.isAllLoaded
                        ? util.winningNumbersToList(
                            store.lotomaniaModel.resultado)
                        : [],
                    date: store.isAllLoaded
                        ? store.lotomaniaModel.data
                        : DateTime.now(),
                    nextContestDate: store.isAllLoaded
                        ? store.lotomaniaModel.dataProximoConcurso
                        : DateTime.now(),
                    rowLimited: true,
                  ),
                ]),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.orange[100],
                    ),
                    LotteryExpansionWidget(
                      store: store,
                      lotteryIcon: 'assets/images/timemania.png',
                      lotteryName: 'TIMEMANIA',
                      contestNumber: store.isAllLoaded
                          ? store.timemaniaModel.concurso
                          : '',
                      winnersNumbers: store.isAllLoaded
                          ? store.timemaniaModel.nrGanhadores
                          : 0,
                      nextEstimate: store.isAllLoaded
                          ? store.timemaniaModel.premioEstimado
                          : '',
                      backgroundColor: Colors.lightGreenAccent[100],
                      color: Colors.lightGreenAccent[700],
                      lotteryNumbers: store.isAllLoaded
                          ? util.winningNumbersToList(
                              store.timemaniaModel.resultado)
                          : [],
                      date: store.isAllLoaded
                          ? store.timemaniaModel.data
                          : DateTime.now(),
                      nextContestDate: store.isAllLoaded
                          ? store.timemaniaModel.dataProximoConcurso
                          : DateTime.now(),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.lightGreenAccent[100],
                    ),
                    LotteryExpansionWidget(
                      store: store,
                      height: 365,
                      lotteryIcon: 'assets/images/duplasena.png',
                      lotteryName: 'DUPLA SENA',
                      lotteryType: LotteryTypeEnum.duplasena,
                      contestNumber: store.isAllLoaded
                          ? store.duplasenaModel.concurso
                          : '',
                      winnersNumbers: store.isAllLoaded
                          ? store.duplasenaModel.nrGanhadores1
                          : 0,
                      nextEstimate: store.isAllLoaded
                          ? store.duplasenaModel.premioEstimado
                          : '',
                      backgroundColor: Colors.red[100],
                      color: Colors.red[900],
                      firstWinningNumbers: store.isAllLoaded
                          ? util.winningNumbersToList(
                              store.duplasenaModel.resultado1)
                          : [],
                      secondWinningNumbers: store.isAllLoaded
                          ? util.winningNumbersToList(
                              store.duplasenaModel.resultado2)
                          : [],
                      date: store.isAllLoaded
                          ? store.duplasenaModel.data
                          : DateTime.now(),
                      nextContestDate: store.isAllLoaded
                          ? store.duplasenaModel.dataProximoConcurso
                          : DateTime.now(),
                      defaultLottery: false,
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.red[100],
                    ),
                    LotteryExpansionWidget(
                      store: store,
                      height: 384,
                      lotteryIcon: 'assets/images/federal.png',
                      lotteryName: 'FEDERAL',
                      lotteryType: LotteryTypeEnum.federal,
                      contestNumber: store.isAllLoaded
                          ? store.federalModel.concurso
                          : '',
                          date: store.isAllLoaded
                          ? store.federalModel.data
                          : DateTime.now(),
                      backgroundColor: Colors.indigo[100],
                      color: Colors.indigo[700],
                      federalList: store.isAllLoaded
                          ? store.federalModel.listaPremios
                          : [],
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.indigo[100],
                    ),
                    // LotteryExpansionWidget(
                    //   lotteryIcon: 'assets/images/loteca.png',
                    //   lotteryName: 'LOTECA',
                    //   contestNumber: '301',
                    //   nextEstimate: 'R\$2.800.000,00',
                    //   backgroundColor: Colors.deepOrange[50],
                    //   color: Colors.red[700],
                    //   //lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
                    // ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.deepOrange[50],
                    ),
                    // LotteryExpansionWidget(
                    //   lotteryIcon: 'assets/images/lotogol.png',
                    //   lotteryName: 'LOTOGOL',
                    //   contestNumber: '301',
                    //   nextEstimate: 'R\$2.800.000,00',
                    //   backgroundColor: Colors.blue[100],
                    //   color: Colors.blue[700],
                    //   //lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
                    // ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.blue[100],
                    ),
                    // LotteryExpansionWidget(
                    //   lotteryIcon: 'assets/images/diadesorte.png',
                    //   lotteryName: 'DIA DE SORTE',
                    //   contestNumber: '301',
                    //   nextEstimate: 'R\$2.800.000,00',
                    //   backgroundColor: Colors.lime[100],
                    //   color: Colors.lime[800],
                    //   lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
                    // ),
                  ],
                ),
              ],
            )
          : SpinKitCircle(color: Colors.green);
    });
  }
}
