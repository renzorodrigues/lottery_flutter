import 'package:flutter/material.dart';

class WinningNumberWidget extends StatelessWidget {
  final String number;
  final Color color;
  WinningNumberWidget({this.number, this.color = Colors.grey});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, bottom: 2),
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Text(
        this.number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
