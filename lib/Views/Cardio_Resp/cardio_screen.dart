import 'package:flutter/material.dart';

class CardioScreen extends StatelessWidget {
  const CardioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardio-Respiratory'),
      ),
      body: const Center(child: Text('Vo2 test options')),
    );
  }
}
