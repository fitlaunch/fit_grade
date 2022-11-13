import 'package:flutter/material.dart';

class FlexibilityScreen extends StatelessWidget {
  const FlexibilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range of Motion'),
      ),
      body: const Center(child: Text('Flexibility test options')),
    );
  }
}
