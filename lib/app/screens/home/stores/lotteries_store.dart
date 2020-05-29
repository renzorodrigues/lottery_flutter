import 'package:lotery_flutter/app/controllers/lottery_controller.dart';
import 'package:lotery_flutter/app/models/diadesorte_model.dart';
import 'package:lotery_flutter/app/models/duplasena_model.dart';
import 'package:lotery_flutter/app/models/federal_model.dart';
import 'package:lotery_flutter/app/models/lotofacil_model.dart';
import 'package:lotery_flutter/app/models/lotomania_model.dart';
import 'package:lotery_flutter/app/models/megasena_model.dart';
import 'package:lotery_flutter/app/models/quina_model.dart';
import 'package:lotery_flutter/app/models/timemania_model.dart';
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

  @observable
  DiadesorteModel diadesorteModel;

  @action
  void fetchMegasena() {
    megasenaModel = null;
    controller.getMegasena().then((res) {
      megasenaModel = res;
    });
  }

  @action
  void fetchLotofacil() {
    lotofacilModel = null;
    controller.getLotofacil().then((res) {
      lotofacilModel = res;
    });
  }

  @action
  void fetchQuina() {
    quinaModel = null;
    controller.getQuina().then((res) {
      quinaModel = res;
    });
  }

  @action
  void fetchLotomania() {
    lotomaniaModel = null;
    controller.getLotomania().then((res) {
      lotomaniaModel = res;
    });
  }

  @action
  void fetchTimemania() {
    timemaniaModel = null;
    controller.getTimemania().then((res) {
      timemaniaModel = res;
    });
  }

  @action
  void fetchDuplasena() {
    duplasenaModel = null;
    controller.getDuplasena().then((res) {
      duplasenaModel = res;
    });
  }

  @action
  void fetchFederal() {
    federalModel = null;
    controller.getFederal().then((res) {
      federalModel = res;
    });
  }

  @action
  void fetchDiadesorte() {
    diadesorteModel = null;
    controller.getDiadesorte().then((res) {
      diadesorteModel = res;
    });
  }

  @action
  void fetchLotteries() {
    fetchMegasena();
    fetchLotofacil();
    fetchQuina();
    fetchLotomania();
    fetchTimemania();
    fetchDuplasena();
    fetchFederal();
    fetchDiadesorte();
  }

  @computed 
  bool get isAllLoaded => 
                megasenaModel != null &&
                lotofacilModel != null &&
                quinaModel != null &&
                lotomaniaModel != null &&
                timemaniaModel != null &&
                duplasenaModel != null &&
                federalModel != null &&
                diadesorteModel != null;
}
