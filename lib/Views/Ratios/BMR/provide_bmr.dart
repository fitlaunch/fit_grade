import 'package:flutter_riverpod/flutter_riverpod.dart';

//BUTTON COLOR STATE PROVIDER
enum GenBtnBackground { activeMale, inActiveMale, activeFem, inActiveFem }

GenBtnBackground? genBtnBackground;

final StateProvider<GenBtnBackground?> genBtnBackgroundProvider =
    StateProvider((ref) => genBtnBackground);

///Revised Harris-Benedict Equation
//MALE BMR STATE NOTIFIER PROVIDER
class ProvideMaleBMR extends StateNotifier<String> {
  ProvideMaleBMR() : super('');

  String getMaleBmr(int height, int weight, int ageM) {
    double bmrMale;
    bmrMale = 88.362 +
        ((weight * 0.453592) * 13.397) +
        (4.799 * (height * 2.54) - (5.677 * ageM));
    return bmrMale.toStringAsFixed(2);
  }
}

//FEMALE BMR STATE NOTIFIER PROVIDER
class ProvideFemBMR extends StateNotifier<String> {
  ProvideFemBMR() : super('');

  String getFemBmr(int height, int weight, int ageF) {
    double bmrFemale;
    bmrFemale = 447.593 +
        ((weight * 0.453592) * 9.247) +
        (3.098 * (height * 2.54) - (4.330 * ageF));
    return bmrFemale.toStringAsFixed(2);
  }
}

final bmrMaleProvider = StateNotifierProvider((ref) => ProvideMaleBMR());
final ageProvider = StateNotifierProvider((ref) => ProvideMaleBMR());
final bmrFemProvider = StateNotifierProvider((ref) => ProvideFemBMR());
//final ageFemProvider = StateNotifierProvider((ref) => ProvideFemBMR());
