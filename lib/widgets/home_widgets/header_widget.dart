import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.blue,
              child: Text('opa1'),
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.blue,
              child: Text('opa1'),
            ),
            Container(
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.blue,
              child: Text('opa1'),
            ),
          ],
        ),
      ),
    );
  }
}
