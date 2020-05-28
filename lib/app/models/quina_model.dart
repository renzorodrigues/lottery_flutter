import 'package:lotery_flutter/app/utils/customFormatDate.dart';

class QuinaModel {
  String concurso;
  DateTime data;
  String resultado;
  int nrGanhadores;
  String premioAtual;
  String premioEstimado;
  DateTime dataProximoConcurso;

  QuinaModel({
    this.concurso,
    this.data,
    this.resultado,
    this.nrGanhadores,
    this.premioAtual,
    this.premioEstimado,
    this.dataProximoConcurso,
  });

  QuinaModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['concurso'].toString(),
        this.data = CustomFormatDate().instance.parse(json['dataStr']),
        this.resultado = json['resultadoOrdenado'],
        this.nrGanhadores = json['ganhadores'],
        this.premioAtual = json['valor'].toString(),
        this.premioEstimado = json['vrEstimado'].toString(),
        this.dataProximoConcurso = CustomFormatDate().instance.parse(json['dtProximoConcursoStr'])
        ;

  Map<String, dynamic> toJson() => {
        'concurso': this.concurso,
        'data': this.data,
        'resultado': this.resultado,
        'nrGanhadores': this.nrGanhadores,
        'premioAtual': this.premioAtual,
        'premioEstimado': this.premioEstimado,
        'dataProximoConcurso': this.dataProximoConcurso,
      };
}
