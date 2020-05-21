import 'package:lotery_flutter/utils/customFormatDate.dart';

class LotofacilModel {
  String concurso;
  DateTime data;
  String resultado;
  int nrGanhadores;
  String premioFaixa1;
  String premioEstimado;
  DateTime dataProximoConcurso;

  LotofacilModel({
    this.concurso,
    this.data,
    this.resultado,
    this.nrGanhadores,
    this.premioFaixa1,
    this.premioEstimado,
    this.dataProximoConcurso,
  });

  LotofacilModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['nu_concurso'].toString(),
        this.data = CustomFormatDate().instance.parse(json['dt_apuracaoStr']),
        this.resultado = json['resultadoOrdenado'],
        this.nrGanhadores = json['qt_ganhador_faixa1'],
        this.premioFaixa1 = json['vr_rateio_faixa1'].toString(),
        this.premioEstimado = json['vrEstimativa'],
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

  List<String> winningNumbersToList() {
    var resultadoList = resultado.split('-');
    return resultadoList;
  }
}
