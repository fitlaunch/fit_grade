import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter2 extends Notifier<int> {
  @override
  int build() {
    return 10;
  }

  void increment() => state++;

  void decrement() => state = state - 3;
}

final counterProvider2 = NotifierProvider<Counter2, int>(Counter2.new);
