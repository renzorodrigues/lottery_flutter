import 'package:lotery_flutter/app/models/federal_model.dart';

class FederalService {
  FederalModel federalModel = FederalModel();
  List<Map<String, dynamic>> premios = [];

  toListMap(List<Map<String, dynamic>> federalList) {
    federalList.forEach((f) {
      premios.add(f);
    });
    print(premios);
    return premios;
  }
}
