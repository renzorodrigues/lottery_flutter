import 'package:lotery_flutter/utils/customFormatDate.dart';

class MegasenaModel {
  String concurso;
  DateTime data;
  String resultado;
  int nrGanhadores;
  String premioAtual;
  String premioEstimado;
  DateTime dataProximoConcurso;

  MegasenaModel({
    this.concurso,
    this.data,
    this.resultado,
    this.nrGanhadores,
    this.premioAtual,
    this.premioEstimado,
    this.dataProximoConcurso,
  });

  MegasenaModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['concurso'].toString(),
        this.data = CustomFormatDate().instance.parse(json['dataStr']),
        this.resultado = json['resultadoOrdenado'],
        this.nrGanhadores = json['ganhadores'],
        this.premioAtual = json['valor'].toString(),
        this.premioEstimado = json['vr_estimativa'].toString(),
        this.dataProximoConcurso = CustomFormatDate().instance.parse(json['dt_proximo_concursoStr'])
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
