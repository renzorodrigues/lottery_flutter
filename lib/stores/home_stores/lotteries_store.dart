import 'package:lotery_flutter/models/duplasena_model.dart';
import 'package:lotery_flutter/models/federal_model.dart';
import 'package:lotery_flutter/models/lotofacil_model.dart';
import 'package:lotery_flutter/models/lotomania_model.dart';
import 'package:lotery_flutter/models/megasena_model.dart';
import 'package:lotery_flutter/controllers/lottery_controller.dart';
import 'package:lotery_flutter/models/quina_model.dart';
import 'package:lotery_flutter/models/timemania_model.dart';
import 'package:mobx/mobx.dart';
part 'lotteries_store.g.dart';

class LotteriesStore = _LotteriesStoreBase with _$LotteriesStore;

LotteryController controller = LotteryController();

abstract class _LotteriesStoreBase with Store {

  @observable
  MegasenaModel megasenaModel;

  @observable
  LotofacilModel lotofacilModel;

  @observable
  QuinaModel quinaModel;

  @observable
  LotomaniaModel lotomaniaModel;

  @observable
  TimemaniaModel timemaniaModel;

  @observable
  DuplasenaModel duplasenaModel;

  @observable
  FederalModel federalModel;

  @action
  fetchMegasena() {
    megasenaModel = null;
    controller.getMegasena().then((res) {
      megasenaModel = res;
    });
  }

  @action
  fetchLotofacil() {
    lotofacilModel = null;
    controller.getLotofacil().then((res) {
      lotofacilModel = res;
    });
  }

  @action
  fetchQuina() {
    quinaModel = null;
    controller.getQuina().then((res) {
      quinaModel = res;
    });
  }

  @action
  fetchLotomania() {
    lotomaniaModel = null;
    controller.getLotomania().then((res) {
      lotomaniaModel = res;
    });
  }

  @action
  fetchTimemania() {
    timemaniaModel = null;
    controller.getTimemania().then((res) {
      timemaniaModel = res;
    });
  }

  @action
  fetchDuplasena() {
    duplasenaModel = null;
    controller.getDuplasena().then((res) {
      duplasenaModel = res;
    });
  }

  @action
  fetchFederal() {
    federalModel = null;
    controller.getFederal().then((res) {
      federalModel = res;
    });
  }

  @action
  fetchLotteries() {
    fetchMegasena();
    fetchLotofacil();
    fetchQuina();
    fetchLotomania();
    fetchTimemania();
    fetchDuplasena();
    fetchFederal();
  }

  @computed 
  bool get isAllLoaded => 
                megasenaModel != null &&
                lotofacilModel != null &&
                quinaModel != null &&
                lotomaniaModel != null &&
                timemaniaModel != null &&
                duplasenaModel != null &&
                federalModel != null;
}
