import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Providers - leave here or place at top ui file?  Either works global prroviders)
final userProvider =
    StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier(
          const User(name: '', age: 0, weight: 0),
        ));
final rankProvider = StateNotifierProvider((ref) => RankNotifier());

@immutable
class User {
  final String name;
  final int age;
  final double weight;
  //final double rank;

//<editor-fold desc="Data Methods">
  //generated much of below with Dart Generator Class Plugin (comment or delete unused, most)
  const User({
    required this.name,
    required this.age,
    required this.weight,
    // required this.rank,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age &&
          weight == other.weight); //&&
  //rank == other.rank);

  @override
  int get hashCode =>
      name.hashCode ^ age.hashCode ^ weight.hashCode; //^ rank.hashCode;

  @override
  String toString() {
    return 'User{ name: $name, age: $age, weight: $weight, }'; //rank: $rank,
  }

  User copyWith({
    String? name,
    int? age,
    double? weight,
    //double? rank,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      //rank: rank ?? this.rank,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'age': this.age,
      'weight': this.weight,
      //'rank': this.rank,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      age: map['age'] as int,
      weight: map['weight'] as double,
      //rank: map['rank'] as double,
    );
  }

//</editor-fold>
}

///State Notifier
class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String name) {
    //with above easily generated code (ie copywith method) can do following
    state = state.copyWith(name: name);
    //state = User(name: name, age: state.age);  - could do this but long if more parameters
  }

  void updateAge(int a) {
    state = state.copyWith(age: a);
  }

  void updateWeight(double w) {
    state = state.copyWith(weight: w);
  }

  ///these don't work???
  // void calcRank(weight, age) {
  //    state = state.copyWith(rank: (.62 * weight) - 22 + age);
  //  }

  // void calcRank(weight, age) {
  //   double score;
  //   score = (.62 * weight) + 22 - age;
  //   return state.copyWith(rank: score);
  //   //score.toStringAsFixed(2);
  // }
}

class RankNotifier extends StateNotifier<String?> {
  RankNotifier() : super('0');

  String calcRank(weight, age) {
    double rank;
    rank = (.62 * weight) + 22 - age;
    return rank.toString();
  }
}
