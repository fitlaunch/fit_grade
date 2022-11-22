import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'BMI/BMI_Providers/provide_bmi.dart';
import 'Waist_Hip/provide_waist_hip_ratio.dart';

//BMI
final heightProvider = StateNotifierProvider((ref) => ProvideBMI());
final weightProvider = StateNotifierProvider((ref) => ProvideBMI());
final bmiValueProvider = StateNotifierProvider((ref) => ProvideBMI());

//BMR
final waistProvider = StateNotifierProvider((ref) => ProvideWaistHipRatio());
final waistHipRatioProvider =
    StateNotifierProvider((ref) => ProvideWaistHipRatio());
final hipProvider = StateNotifierProvider((ref) => ProvideWaistHipRatio());

//All Ratios List ratios_screen.dart

//  final allRatioProvider = StateNotifierProvider<RatiosNotifier, List<Ratio>>(
//   (_) => RatiosNotifier(),
// );

//final favoriteRatioProvider = StateNotifierProvider((ref) => RatiosNotifier());
// final favoriteRatioProvider = StateNotifierProvider<Iterable bool<Ratios>>((ref) =>
//     ref.watch(allRatioProvider).where((ratio) => ratio.isFavorite),
// );
