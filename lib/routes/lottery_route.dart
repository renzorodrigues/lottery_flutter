import 'package:flutter/material.dart';
import 'package:lotery_flutter/screens/megasena_screen.dart';

class LotteryRoute {
  
  Future<void> nextPage(BuildContext context, String lotteryName) async {
    print(lotteryName);
    if (lotteryName.toLowerCase() == 'mega-sena'){
      await Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => MegaSenaScreen()));
    });
    }
  }

}