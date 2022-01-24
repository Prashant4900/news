import 'package:intl/intl.dart';

String formateDateTime(String dateTime) {
  DateFormat inputFormat = DateFormat('dd-MM-yyyy hh.mm.ss a');
  DateTime input = inputFormat.parse(dateTime);
  String datee = DateFormat('MMM d, yyyy').format(input);
  return datee;
}
