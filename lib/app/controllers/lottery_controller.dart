import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lotery_flutter/app/models/duplasena_model.dart';
import 'package:lotery_flutter/app/models/federal_model.dart';
import 'package:lotery_flutter/app/models/lotofacil_model.dart';
import 'package:lotery_flutter/app/models/lotomania_model.dart';
import 'package:lotery_flutter/app/models/megasena_model.dart';
import 'package:lotery_flutter/app/models/quina_model.dart';
import 'package:lotery_flutter/app/models/timemania_model.dart';

class LotteryController {
  Future<MegasenaModel> getMegasena() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/megasena/");
      var decodeJson = jsonDecode(response.body);
      return MegasenaModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }

  Future<LotofacilModel> getLotofacil() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/lotofacil/");
      var decodeJson = jsonDecode(response.body);
      return LotofacilModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }

  Future<QuinaModel> getQuina() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/quina/");
      var decodeJson = jsonDecode(response.body);
      return QuinaModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }

  Future<LotomaniaModel> getLotomania() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/lotomania/");
      var decodeJson = jsonDecode(response.body);
      return LotomaniaModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }

  Future<TimemaniaModel> getTimemania() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/timemania/");
      var decodeJson = jsonDecode(response.body);
      return TimemaniaModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }

  Future<DuplasenaModel> getDuplasena() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/duplasena/");
      var decodeJson = jsonDecode(response.body);
      return DuplasenaModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }

  Future<FederalModel> getFederal() async {
    try {
      var response = await http.get("https://lottery-renzo.herokuapp.com/federal/");
      var decodeJson = jsonDecode(response.body);
      return FederalModel.fromJson(decodeJson);
    } catch (e) {
      return null;
    }
  }
}
