import 'package:lotery_flutter/app/utils/customFormatDate.dart';

class LotomaniaModel {
  String concurso;
  DateTime data;
  String resultado;
  int nrGanhadores;
  String premioFaixa1;
  String premioEstimado;
  DateTime dataProximoConcurso;

  LotomaniaModel({
    this.concurso,
    this.data,
    this.resultado,
    this.nrGanhadores,
    this.premioFaixa1,
    this.premioEstimado,
    this.dataProximoConcurso,
  });

  LotomaniaModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['concurso'].toString(),
        this.data = CustomFormatDate().instance.parse(json['dtApuracaoStr']),
        this.resultado = json['resultadoOrdenado'],
        this.nrGanhadores = json['qtGanhadoresFaixa1'],
        this.premioFaixa1 = json['vrRateioFaixa1'].toString(),
        this.premioEstimado = json['vrEstimativa'].toString(),
        this.dataProximoConcurso = CustomFormatDate().instance.parse(json['dtProximoConcursoStr'])
        ;

  Map<String, dynamic> toJson() => {
        'concurso': this.concurso,
        'data': this.data,
        'resultado': this.resultado,
        'nrGanhadores': this.nrGanhadores,
        'premioFaixa1': this.premioFaixa1,
        'premioEstimado': this.premioEstimado,
        'dataProximoConcurso': this.dataProximoConcurso,
      };
}
