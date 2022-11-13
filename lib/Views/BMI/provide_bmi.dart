import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProvideBMI extends StateNotifier<String> {
  ProvideBMI() : super('');
  String getBmiValue(int height, int weight) {
    double bmi;
    bmi = (weight * 703) / pow(height, 2);
    return bmi.toStringAsFixed(2);
  }
}

final heightProvider = StateNotifierProvider((ref) => ProvideBMI());
final weightProvider = StateNotifierProvider((ref) => ProvideBMI());
final bmiValueProvider = StateNotifierProvider((ref) => ProvideBMI());
