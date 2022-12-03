import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class BMI {
  final double height;
  final double weight;

  const BMI({required this.height, required this.weight});

  BMI copyWith({
    double? height,
    double? weight,
  }) {
    return BMI(height: height ?? this.height, weight: weight ?? this.weight);
  }
}

class BmiInputNotifier extends StateNotifier<BMI> {
  BmiInputNotifier(super.state);

  void updateWeight(double w) {
    state = state.copyWith(weight: w);
  }

  void updateHeight(double h) {
    state = state.copyWith(height: h);
  }
}

class BMINotifier extends StateNotifier<String?> {
  BMINotifier() : super('0.0');

  String calcBMI(double weight, double height) {
    double bMI;
    bMI = (weight * 703) / pow(height, 2);
    return bMI.toStringAsFixed(2);
  }
}

final bmiInputProvider = StateNotifierProvider<BmiInputNotifier, BMI>(
  (ref) => BmiInputNotifier(const BMI(weight: 0.00, height: 0.00)),
);

final bmiProvider = StateNotifierProvider((ref) => BMINotifier());
