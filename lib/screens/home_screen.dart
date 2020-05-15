import 'package:flutter/material.dart';
import 'package:lotery_flutter/services/lottery_service.dart';
import 'package:lotery_flutter/stores/home_store.dart';
import 'package:lotery_flutter/widgets/home_widgets/lottery_expansion_widget.dart';

class HomeScreen extends StatelessWidget {
  final LotteryService lotteryService = LotteryService();
  final HomeStore control = HomeStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              LotteryExpansionWidget(
                lotteryIcon: 'assets/images/megasena.png',
                lotteryName: 'MEGA-SENA',
                contestNumber: '8563',
                nextEstimate: 'R\$90.000.000,00',
                backgroundColor: Colors.green[100],
                color: Colors.green[600],
                lotteryNumbers: lotteryService.lotteryModel.megaSena,
              ),
              LotteryExpansionWidget(
                lotteryIcon: 'assets/images/lotofacil.png',
                lotteryName: 'LOTOFACIL',
                contestNumber: '1452',
                nextEstimate: 'R\$1.500.000,00',
                backgroundColor: Colors.purple[100],
                color: Colors.purple[600],
                lotteryNumbers: lotteryService.lotoFacil,
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
              LotteryExpansionWidget(
                lotteryIcon: 'assets/images/lotomania.png',
                lotteryName: 'LOTOMANIA',
                contestNumber: '7788',
                nextEstimate: 'R\$3.000.000,00',
                backgroundColor: Colors.orange[100],
                color: Colors.orange[600],
                lotteryNumbers: lotteryService.lotoMania,
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
              LotteryExpansionWidget(
                lotteryIcon: 'assets/images/diadesorte.png',
                lotteryName: 'DIA DE SORTE',
                contestNumber: '301',
                nextEstimate: 'R\$2.800.000,00',
                backgroundColor: Colors.lime[100],
                color: Colors.lime[700],
                lotteryNumbers: lotteryService.lotteryModel.diaDeSorte,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
