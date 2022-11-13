import 'package:flutter/material.dart';

class StrEndurScreen extends StatelessWidget {
  const StrEndurScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muscular Endurance'),
      ),
      body: const Center(child: Text('Strength endurance test options')),
    );
  }
}
