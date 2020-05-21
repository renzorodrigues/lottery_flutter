import 'package:flutter/material.dart';
import 'package:lotery_flutter/models/federal_model.dart';

class FederalResultWidget extends StatelessWidget {
  final String contestNumber;
  final DateTime contasteDate;
  final List<Map<String, dynamic>> federalList;

  FederalResultWidget({
    this.contestNumber,
    this.contasteDate,
    this.federalList = const [],
  });

  int _checkIndex(){
    if (key == 'premio1'){
      return 1;
    }
  }

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
          ...federalList.map((premio) {
            var color = Colors.white10;
            return Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  width: 80,
                  color: color,
                  child: Text(
                    '1º',
                    //'${premio.destino.toString()}º',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 100,
                  color: color,
                  child: Text(
                    'bilhete',
                    //premio.bilhete,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 120,
                  color: color,
                  child: Text(
                    'valor premio',
                    //premio.valorPremio.toStringAsFixed(2),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
