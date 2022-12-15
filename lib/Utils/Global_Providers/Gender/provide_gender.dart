import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProvideGender extends StateNotifier<int> {
  ProvideGender() : super(2); //(int initialValue) : super(initialValue);

  void selectGender1() => state = 1;
  void selectGender2() => state = 2;
  updateGender(int newValue) {
    state = newValue;
  }
}

final genderProvider =
    StateNotifierProvider<ProvideGender, int>((ref) => ProvideGender());
//final genderProvider = StateProvider<int>((ref) => 1);
final maleProvider =
    StateNotifierProvider<ProvideGender, int>((ref) => ProvideGender());
final femaleProvider = StateNotifierProvider((ref) => ProvideGender());
