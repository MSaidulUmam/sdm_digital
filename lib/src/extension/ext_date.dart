import 'package:intl/intl.dart';

extension ExtDateOnString on String {
  DateTime? extParseDate() {
    return DateTime.tryParse(this);
  }

  String? extTryFormatDate({
    String format = 'd MMMM yyyy',
  }) {
    final date = extParseDate();
    if (date == null) {
      return null;
    }
    return DateFormat(format).format(date);
  }

  String extFormatDate({
    String format = 'd MMMM yyyy',
  }) {
    return extTryFormatDate(format: format) ?? '';
  }
}
