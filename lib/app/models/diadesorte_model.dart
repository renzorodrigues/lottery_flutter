import 'package:lotery_flutter/app/utils/customFormatDate.dart';

class DiadesorteModel {
  String concurso;
  DateTime data;
  String resultado;
  int nrGanhadores;
  String premioFaixa1;
  String premioEstimado;
  DateTime dataProximoConcurso;

  DiadesorteModel({
    this.concurso,
    this.data,
    this.resultado,
    this.nrGanhadores,
    this.premioFaixa1,
    this.premioEstimado,
    this.dataProximoConcurso,
  });

  DiadesorteModel.fromJson(Map<String, dynamic> json)
      : this.concurso = json['nu_CONCURSO'].toString(),
        this.data = CustomFormatDate().instance.parse(json['dt_APURACAOStr']),
        this.resultado = json['resultadoOrdenado'],
        this.nrGanhadores = int.tryParse(json['qt_GANHADOR_FAIXA_1']),
        this.premioFaixa1 = json['vr_RATEIO_FAIXA_1'].toString(),
        this.premioEstimado = json['vr_ESTIMATIVA'].toString(),
        this.dataProximoConcurso = CustomFormatDate().instance.parse(json['dt_PROXIMO_CONCURSOStr'])
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
