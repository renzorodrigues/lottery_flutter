import 'package:flutter/material.dart';

class WinningNumberWidget extends StatelessWidget {
  final String number;
  final Color color;
  final bool border;

  WinningNumberWidget(
      {this.number, this.color = Colors.grey, this.border = false});

  _isBordered() {
    return this.border ? Border.all(color: Colors.yellow, width: 3) : null;
  }

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
        border: _isBordered(),
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
