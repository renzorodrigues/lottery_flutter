import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lotery_flutter/app/models/lottery_type_enum.dart';
import 'package:lotery_flutter/app/screens/home/stores/lotteries_store.dart';
import 'package:lotery_flutter/app/utils/util.dart';
import 'lottery_expansion_widget.dart';

class ContentWidget extends StatelessWidget {
  final LotteriesStore store;
  final Util util = Util();

  ContentWidget(this.store);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Wrap(
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
                contestNumber: store.megasenaModel.concurso,
                winnersNumbers: store.megasenaModel.nrGanhadores,
                award: store.megasenaModel.premioAtual,
                nextEstimate: store.megasenaModel.premioEstimado,
                backgroundColor: Colors.green[100],
                color: Colors.green[600],
                lotteryNumbers:
                    util.winningNumbersToList(store.megasenaModel.resultado),
                date: store.megasenaModel.data,
                nextContestDate: store.megasenaModel.dataProximoConcurso,
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
                contestNumber: store.lotofacilModel.concurso,
                winnersNumbers: store.lotofacilModel.nrGanhadores,
                nextEstimate: store.lotofacilModel.premioEstimado,
                backgroundColor: Colors.purple[100],
                color: Colors.purple[600],
                lotteryNumbers:
                    util.winningNumbersToList(store.lotofacilModel.resultado),
                rowLimited: true,
                date: store.lotofacilModel.data,
                nextContestDate: store.lotofacilModel.dataProximoConcurso,
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
                contestNumber: store.quinaModel.concurso,
                winnersNumbers: store.quinaModel.nrGanhadores,
                nextEstimate: store.quinaModel.premioEstimado,
                backgroundColor: Colors.deepPurple[100],
                color: Colors.deepPurple[600],
                lotteryNumbers:
                    util.winningNumbersToList(store.quinaModel.resultado),
                date: store.quinaModel.data,
                nextContestDate: store.quinaModel.dataProximoConcurso,
              ),
            ],
          ),
          Stack(
            children: <Widget>[
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
                contestNumber: store.lotomaniaModel.concurso,
                winnersNumbers: store.lotomaniaModel.nrGanhadores,
                nextEstimate: store.lotomaniaModel.premioEstimado,
                backgroundColor: Colors.orange[100],
                color: Colors.orange[600],
                lotteryNumbers:
                    util.winningNumbersToList(store.lotomaniaModel.resultado),
                date: store.lotomaniaModel.data,
                nextContestDate: store.lotomaniaModel.dataProximoConcurso,
                rowLimited: true,
              ),
            ],
          ),
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
                contestNumber: store.timemaniaModel.concurso,
                winnersNumbers: store.timemaniaModel.nrGanhadores,
                nextEstimate: store.timemaniaModel.premioEstimado,
                backgroundColor: Colors.lightGreenAccent[100],
                color: Colors.lightGreenAccent[700],
                lotteryNumbers:
                    util.winningNumbersToList(store.timemaniaModel.resultado),
                date: store.timemaniaModel.data,
                nextContestDate: store.timemaniaModel.dataProximoConcurso,
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
                height: 378,
                lotteryIcon: 'assets/images/duplasena.png',
                lotteryName: 'DUPLA SENA',
                lotteryType: LotteryTypeEnum.duplasena,
                contestNumber: store.duplasenaModel.concurso,
                winnersNumbers: store.duplasenaModel.nrGanhadores1,
                nextEstimate: store.duplasenaModel.premioEstimado,
                backgroundColor: Colors.red[100],
                color: Colors.red[900],
                firstWinningNumbers:
                    util.winningNumbersToList(store.duplasenaModel.resultado1),
                secondWinningNumbers:
                    util.winningNumbersToList(store.duplasenaModel.resultado2),
                date: store.duplasenaModel.data,
                nextContestDate: store.duplasenaModel.dataProximoConcurso,
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
                height: 343,
                lotteryIcon: 'assets/images/federal.png',
                lotteryName: 'FEDERAL',
                lotteryType: LotteryTypeEnum.federal,
                contestNumber: store.federalModel.concurso,
                date: store.federalModel.data,
                backgroundColor: Colors.indigo[100],
                color: Colors.indigo[700],
                federalList: store.federalModel.listaPremios,
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
              LotteryExpansionWidget(
                lotteryIcon: 'assets/images/loteca.png',
                lotteryName: 'LOTECA',
                contestNumber: '301',
                nextEstimate: 'R\$2.800.000,00',
                backgroundColor: Colors.deepOrange[50],
                color: Colors.red[700],
                //lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.deepOrange[50],
              ),
              LotteryExpansionWidget(
                lotteryIcon: 'assets/images/lotogol.png',
                lotteryName: 'LOTOGOL',
                contestNumber: '301',
                nextEstimate: 'R\$2.800.000,00',
                backgroundColor: Colors.blue[100],
                color: Colors.blue[700],
                //lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue[100],
              ),
              LotteryExpansionWidget(
                store: store,
                lotteryIcon: 'assets/images/diadesorte.png',
                lotteryName: 'DIA DE SORTE',
                contestNumber: store.diadesorteModel.concurso,
                winnersNumbers: store.diadesorteModel.nrGanhadores,
                nextEstimate: store.diadesorteModel.premioEstimado,
                backgroundColor: Colors.lime[100],
                color: Colors.lime[700],
                lotteryNumbers:
                    util.winningNumbersToList(store.diadesorteModel.resultado),
                date: store.diadesorteModel.data,
                nextContestDate: store.diadesorteModel.dataProximoConcurso,
              ),
            ],
          ),
        ],
      );
    });
  }
}
