import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[100],
              ),
              child: FlutterLogo(
                colors: Colors.green,
                size: 50,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[100],
              ),
              child: FlutterLogo(
                colors: Colors.green,
                size: 50,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[100],
              ),
              child: FlutterLogo(
                colors: Colors.green,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
