import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter2.dart';
import 'counter_screen.dart';

class Counter2Screen extends ConsumerWidget {
  const Counter2Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider2);
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'count Me Two',
      )),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => ref.read(counterProvider2.notifier).increment(),
              child: const Text('+1'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(counterProvider2.notifier).decrement(),
              child: const Text('-3'),
            ),
            const SizedBox(height: 20),
            const Text('count starts @ 10'),
            const SizedBox(height: 5),
            Text(
              'The value is $count',
              style: const TextStyle(color: Colors.purple, fontSize: 28),
            ),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CounterScreen()));
                },
                child: const Text('Counter 1 Screen'))
          ],
        ),
      ),
    );
  }
}
