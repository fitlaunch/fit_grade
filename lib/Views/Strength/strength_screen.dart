import 'package:flutter/material.dart';

class StrengthScreen extends StatelessWidget {
  const StrengthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maximal Strength'),
      ),
      body: const Center(child: Text('Strength test options')),
    );
  }
}
