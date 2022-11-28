import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProvideWaistHipRatio extends StateNotifier<String> {
  ProvideWaistHipRatio() : super('');

  String getWaistHipRatioValue(int waist, int hip) {
    double ratio;
    ratio = (waist / hip);
    return ratio.toStringAsFixed(2);
  }
}

final waistProvider = StateNotifierProvider((ref) => ProvideWaistHipRatio());
final waistHipRatioProvider =
    StateNotifierProvider((ref) => ProvideWaistHipRatio());
final hipProvider = StateNotifierProvider((ref) => ProvideWaistHipRatio());
