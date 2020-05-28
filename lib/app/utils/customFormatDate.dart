import 'package:intl/intl.dart';

class CustomFormatDate {
  DateFormat _dateFormat;

  CustomFormatDate() {
    this._dateFormat = DateFormat('dd/MM/yyyy');
  }

  DateFormat get instance => this._dateFormat;
}
