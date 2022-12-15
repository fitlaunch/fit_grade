import 'package:flutter/material.dart';

@immutable
class User {
  final String name;
  final int age;
  final double weight;
  //final double rank;

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
