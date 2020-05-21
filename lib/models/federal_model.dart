import 'package:lotery_flutter/utils/customFormatDate.dart';

class FederalModel {
  String concurso;
  DateTime data;
  List<Map<String, dynamic>> listaPremios;

  FederalModel({
    this.concurso,
    this.data,
    this.listaPremios,
  });

  FederalModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['concurso'].toString(),
        this.data = CustomFormatDate().instance.parse(json['data']),
        this.listaPremios = [
          json['premios'][0],
          json['premios'][1],
          json['premios'][2],
          json['premios'][3],
          json['premios'][4]
        ];

  Map<String, dynamic> toJson() => {
        'concurso': this.concurso,
        'data': this.data,
        'listaPremios': this.listaPremios,
      };
}
