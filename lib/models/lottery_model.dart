class LotteryModel {
  String _contestNumber;
  DateTime _contestDate;
  String _prizeAmount;
  List<String> _megaSenaNumbers = ['11', '34', '37', '49', '51', '58'];
  List<String> _quinaNumbers = ['17', '23', '26', '34', '73'];
  List<String> _timeManiaNumbers = ['12', '18', '24', '28', '34', '60', '67'];
  List<String> _diaDeSorteNumbers = ['11', '18', '22', '27', '28', '29', '30'];
  List<String> _lotoManiaNumbers = ['02','03','06','10','11','15','17','18','20','23','25','26','29','34','37','38','40','42','47','50'];
  List<String> _lotoFacilNumbers = ['01','03','05','09','10','13','15','16','19','21','25','30','32','34','48'];

  String get contestNumber => _contestNumber;
  DateTime get contestDate => _contestDate;
  String get prizeAmount => _prizeAmount;
  List<String> get megaSena => _megaSenaNumbers;
  List<String> get quina => _quinaNumbers;
  List<String> get lotoMania => _lotoManiaNumbers;
  List<String> get lotoFacil => _lotoFacilNumbers;
  List<String> get timeMania => _timeManiaNumbers;
  List<String> get diaDeSorte => _diaDeSorteNumbers;

}
