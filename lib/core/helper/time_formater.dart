import 'dart:developer';

import 'package:intl/intl.dart';

String formatTimeIntoString(String time) {
  try {
    DateTime parsedTime = DateFormat('HH:mm').parse(time);

    String formattedTime = DateFormat('hh:mm a', 'en').format(parsedTime);
    formattedTime = formattedTime.replaceAll('AM', 'ص').replaceAll('PM', 'م');
    return formattedTime;
  } on Exception catch (e) {
    log(e.toString());
    return time;
  }
}

DateTime parseTimeIntoDateTime(String time) {
  DateTime now = DateTime.now();
  List<String> parts = time.split(':');
  int hour = int.parse(parts[0]);
  int minute = int.parse(parts[1]);
  return DateTime(now.year, now.month, now.day, hour, minute);
}
