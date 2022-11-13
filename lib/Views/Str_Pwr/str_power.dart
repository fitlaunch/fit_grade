import 'package:flutter/material.dart';

class StrPowerScreen extends StatelessWidget {
  const StrPowerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muscular Power'),
      ),
      body: const Center(child: Text('Strength Power test options')),
    );
  }
}
