import 'package:flutter_riverpod/flutter_riverpod.dart';

enum GenBtnBackground { activeMale, inActiveMale, activeFem, inActiveFem }

GenBtnBackground? genBtnBackground;

final StateProvider<GenBtnBackground?> genBtnBackgroundProvider =
    StateProvider((ref) => genBtnBackground);

class ProvideMaleBMR extends StateNotifier<String> {
  ProvideMaleBMR() : super('');

  ///Revised Harris-Benedict Equation

  String getMaleBmr(int height, int weight, int age) {
    double bmrMale;
    bmrMale = 88.362 +
        ((weight * 0.453592) * 13.397) +
        (4.799 * (height * 2.54) - (5.677 * age));
    return bmrMale.toStringAsFixed(2);
  }
}

class ProvideFemBMR extends StateNotifier<String> {
  ProvideFemBMR() : super('');

  String getFemBmr(int height, int weight, int age) {
    double bmrFemale;
    bmrFemale = 447.593 +
        ((weight * 0.453592) * 9.247) +
        (3.098 * (height * 2.54) - (4.330 * age));
    return bmrFemale.toStringAsFixed(2);
  }
}

final bmrMaleProvider = StateNotifierProvider((ref) => ProvideMaleBMR());
final ageProvider = StateNotifierProvider((ref) => ProvideMaleBMR());

final bmrFemProvider = StateNotifierProvider((ref) => ProvideFemBMR());
//final ageFemProvider = StateNotifierProvider((ref) => ProvideFemBMR());
