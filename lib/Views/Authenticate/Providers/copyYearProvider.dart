import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

//did this with riverpod for login.dart and without rp on signin.dart
//simpler and less code for this without rp  (unless using in multiple places)

class CopyYear extends StateNotifier<String> {
  CopyYear() : super('2000');

  final DateTime date = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy');
  //final String formatted; // = formatter.format(date);

  String year() {
    return formatter.format(date);
  }
}
