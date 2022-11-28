import 'package:fit_grade/Views/Counter/counter.dart';
//import 'package:fit_grade/Views/Counter/counter.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter2_screen.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'count Me',
      )),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              child: const Text('+1'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider.notifier).decrement(),
              child: const Text('-2'),
            ),
            const SizedBox(height: 20),
            Text(
              'The value is $count',
              style: const TextStyle(color: Colors.purple),
            ),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Counter2Screen()));
                },
                child: const Text('Counter2'))
          ],
        ),
      ),
    );
  }
}
