import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String toCustomFormat() {
    final dateFormat = DateFormat('MMM d, yyyy h:mma');
    final formattedDate = dateFormat.format(this).toUpperCase();
    return formattedDate
        .replaceFirst(RegExp(r'\s+pm$'), 'pm')
        .replaceFirst(RegExp(r'\s+am$'), 'am');
  }

  String withDayFormat() {
    final dateFormat = DateFormat('EEE, MMM d');
    return dateFormat.format(this);
  }
}
