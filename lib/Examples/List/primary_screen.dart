import 'package:fit_grade/Examples/List/primary_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimaryScreen extends ConsumerWidget {
  const PrimaryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final primary = ref.watch(primaryProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod List')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(primaryProvider.notifier).add('number ');
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: primary
              .map((e) => GestureDetector(
                    onTap: () {
                      ref.read(primaryProvider.notifier).remove(e);
                    },
                    onLongPress: () {
                      ref
                          .read(primaryProvider.notifier)
                          .update(e, e); // ${Random().nextInt(1000)}');
                      //or  (e, '${e} ' + Random().nextInt(1000).toString());  this shows initial and new num
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e),
                    ),
                  ))
              .toList(), //don't need [ ] since a list coming in
        ),
      ),
    );
  }
}
