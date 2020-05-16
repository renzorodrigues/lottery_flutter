import 'package:flutter/material.dart';
import 'package:lotery_flutter/services/lottery_service.dart';
import 'package:lotery_flutter/widgets/home_widgets/content_widget.dart';
import 'package:lotery_flutter/widgets/home_widgets/header_widget.dart';

class HomeScreen extends StatelessWidget {
  final LotteryService lotteryService = LotteryService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderWidget(),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(bottom: 5, right: 15),
                child: Text('ÚLTIMOS RESULTADOS'),
              ),
              ContentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
