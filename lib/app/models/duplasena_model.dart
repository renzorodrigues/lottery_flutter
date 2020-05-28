
import 'package:lotery_flutter/app/utils/customFormatDate.dart';

class DuplasenaModel {
  String concurso;
  DateTime data;
  String resultado1;
  String resultado2;
  int nrGanhadores1;
  int nrGanhadores2;
  String premioAtual1;
  String premioEstimado;
  DateTime dataProximoConcurso;

  DuplasenaModel({
    this.concurso,
    this.data,
    this.resultado1,
    this.resultado2,
    this.nrGanhadores1,
    this.nrGanhadores2,
    this.premioAtual1,
    this.premioEstimado,
    this.dataProximoConcurso,
  });

  DuplasenaModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['concurso'].toString(),
        this.data = CustomFormatDate().instance.parse(json['dataStr']),
        this.resultado1 = json['resultadoOrdenadoSorteio1'],
        this.resultado2 = json['resultadoOrdenadoSorteio2'],
        this.nrGanhadores1 = json['ganhadores_sena1'],
        this.nrGanhadores2 = json['ganhadores_sena2'],
        this.premioAtual1 = json['valor_acumulado_sena1'].toString(),
        this.premioEstimado = json['valor_estimativa'].toString(),
        this.dataProximoConcurso = CustomFormatDate().instance.parse(json['data_proximo_concursoStr'])
        ;

  Map<String, dynamic> toJson() => {
        'concurso': this.concurso,
        'data': this.data,
        'resultado1': this.resultado1,
        'resultado2': this.resultado2,
        'nrGanhadores1': this.nrGanhadores1,
        'nrGanhadores2': this.nrGanhadores2,
        'premioAtual1': this.premioAtual1,
        'premioEstimado': this.premioEstimado,
        'dataProximoConcurso': this.dataProximoConcurso,
      };
}