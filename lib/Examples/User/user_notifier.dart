import 'package:fit_grade/Examples/User/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///State Notifier
class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String name) {
    //copyWith set up in model
    state = state.copyWith(name: name);
  }

  void updateAge(int a) => state = state.copyWith(age: a);

  void updateWeight(double w) => state = state.copyWith(weight: w);
}

class RankNotifier extends StateNotifier<String?> {
  RankNotifier() : super('0');

  String calcRank(weight, age) {
    double rank;
    rank = (.62 * weight) + 22 - age;
    return rank.toString();
  }
}

///Providers - leave here or place at top ui file?  Either works global providers)
final userProvider =
    StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier(
          const User(name: '', age: 0, weight: 0),
        ));
final rankProvider = StateNotifierProvider((ref) => RankNotifier());
