import 'package:flutter/material.dart';

class FederalResultWidget extends StatelessWidget {
  final List<Map<String, dynamic>> federalList;
  final Color blue1 = Colors.indigo[200];
  final Color blue2 = Colors.indigo[300];

  FederalResultWidget({
    this.federalList = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 20, right: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                child: Text(
                  'Destino',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 100,
                child: Text(
                  'Bilhete',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 120,
                child: Text(
                  'Prêmio (R\$)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                color: this.blue1,
                child: Text(
                  '1º',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 100,
                color: this.blue1,
                child: Text(
                  federalList[0]['premio1'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 120,
                color: this.blue1,
                child: Text(
                  federalList[0]['valor'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                color: this.blue2,
                child: Text(
                  '2º',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 100,
                color: this.blue2,
                child: Text(
                  federalList[1]['premio2'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 120,
                color: this.blue2,
                child: Text(
                  federalList[1]['valor'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                color: this.blue1,
                child: Text(
                  '3º',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 100,
                color: this.blue1,
                child: Text(
                  federalList[2]['premio3'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 120,
                color: this.blue1,
                child: Text(
                  federalList[2]['valor'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                color: this.blue2,
                child: Text(
                  '4º',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 100,
                color: this.blue2,
                child: Text(
                  federalList[3]['premio4'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 120,
                color: this.blue2,
                child: Text(
                  federalList[3]['valor'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                width: 80,
                color: this.blue1,
                child: Text(
                  '5º',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 100,
                color: this.blue1,
                child: Text(
                  federalList[4]['premio5'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 120,
                color: this.blue1,
                child: Text(
                  federalList[4]['valor'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          // })
        ],
      ),
    );
  }
}
