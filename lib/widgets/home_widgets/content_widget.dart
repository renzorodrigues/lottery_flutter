import 'package:flutter/material.dart';
import 'package:lotery_flutter/models/lottery_type_enum.dart';
import 'package:lotery_flutter/services/lottery_service.dart';
import 'lottery_expansion_widget.dart';

class ContentWidget extends StatelessWidget {
  final LotteryService lotteryService = LotteryService();
  @override
  Widget build(BuildContext context) {
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
              lotteryIcon: 'assets/images/megasena.png',
              lotteryName: 'MEGA-SENA',
              contestNumber: '8563',
              nextEstimate: 'R\$90.000.000,00',
              backgroundColor: Colors.green[100],
              color: Colors.green[600],
              lotteryNumbers: lotteryService.lotteryModel.megaSena,
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
              height: 360,
              lotteryIcon: 'assets/images/lotofacil.png',
              lotteryName: 'LOTOFACIL',
              contestNumber: '1452',
              nextEstimate: 'R\$1.500.000,00',
              backgroundColor: Colors.purple[100],
              color: Colors.purple[600],
              lotteryNumbers: lotteryService.lotteryModel.lotoFacil,
              rowLimited: true,
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
              lotteryIcon: 'assets/images/quina.png',
              lotteryName: 'QUINA',
              contestNumber: '2566',
              nextEstimate: 'R\$2.000.000,00',
              backgroundColor: Colors.deepPurple[100],
              color: Colors.deepPurple[600],
              lotteryNumbers: lotteryService.lotteryModel.quina,
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
            height: 401,
            lotteryIcon: 'assets/images/lotomania.png',
            lotteryName: 'LOTOMANIA',
            contestNumber: '7788',
            nextEstimate: 'R\$3.000.000,00',
            backgroundColor: Colors.orange[100],
            color: Colors.orange[600],
            lotteryNumbers: lotteryService.lotteryModel.lotoMania,
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
              lotteryIcon: 'assets/images/timemania.png',
              lotteryName: 'TIMEMANIA',
              contestNumber: '6385',
              nextEstimate: 'R\$1.000.000,00',
              backgroundColor: Colors.lightGreenAccent[100],
              color: Colors.lightGreenAccent[700],
              lotteryNumbers: lotteryService.lotteryModel.timeMania,
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
              height: 365,
              lotteryIcon: 'assets/images/duplasena.png',
              lotteryName: 'DUPLA SENA',
              lotteryType: LotteryTypeEnum.duplasena,
              contestNumber: '555',
              nextEstimate: 'R\$2.800.000,00',
              backgroundColor: Colors.red[100],
              color: Colors.red[900],
              firstWinningNumbers: lotteryService.lotteryModel.duplaSenaFirst,
              secondWinningNumbers: lotteryService.lotteryModel.duplaSenaSecond,
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
              height: 384,
              lotteryIcon: 'assets/images/federal.png',
              lotteryName: 'FEDERAL',
              lotteryType: LotteryTypeEnum.federal,
              contestNumber: '102',
              backgroundColor: Colors.indigo[100],
              color: Colors.indigo[700],
              federalList: lotteryService.lotteryModel.federalList,
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
              lotteryIcon: 'assets/images/diadesorte.png',
              lotteryName: 'DIA DE SORTE',
              contestNumber: '301',
              nextEstimate: 'R\$2.800.000,00',
              backgroundColor: Colors.lime[100],
              color: Colors.lime[800],
              lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
            ),
          ],
        ),
      ],
    );
  }
}
