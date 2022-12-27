import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimaryStateNotifier extends StateNotifier<List<String>> {
  PrimaryStateNotifier() : super(['number 9', 'number 99']);

  void add(String number) {
    number = Random().nextInt(100).toString();
    state = [...state, ('number $number').toString()];
  }

  void remove(String number) {
    state = [...state.where((element) => element != number)];
  }

  void update(String number, String updatedNumber) {
    final updatedList = <String>[];
    final otherNumber = number * 2;
    for (var i = 0; i < state.length; i++) {
      if (state[i] == number) {
        updatedList.add('new number - ${Random().nextInt(1000)}');
      } else {
        updatedList.add(state[i]);
      }
    }
    state = updatedList;
  }
}

final primaryProvider =
    StateNotifierProvider<PrimaryStateNotifier, List<String>>((ref) {
  return PrimaryStateNotifier();
});
