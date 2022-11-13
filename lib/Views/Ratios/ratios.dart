import 'package:flutter/material.dart';

class RatiosScreen extends StatelessWidget {
  const RatiosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Composition'),
      ),
      body: const Center(child: Text('Anthropomorphic test options')),
    );
  }
}
