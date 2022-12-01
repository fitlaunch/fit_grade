import 'package:flutter_riverpod/flutter_riverpod.dart';

///Riverpod 2.0 prefer Notifier and AsyncNotifier

class ProvideWaistHeight extends Notifier<int> {
  ProvideWaistHeight() : super();

  @override
  int build() {
    return 0;
  }

  String getWaistHeightValue(int waist, int height) {
    double ratio;
    ratio = (waist / height);
    return ratio.toStringAsFixed(2);
  }
}

final waistHeightRatioProvider =
    NotifierProvider<ProvideWaistHeight, int>(ProvideWaistHeight.new);
final waistProvider =
    NotifierProvider<ProvideWaistHeight, int>(ProvideWaistHeight.new);
final heightProvider =
    NotifierProvider<ProvideWaistHeight, int>(ProvideWaistHeight.new);
