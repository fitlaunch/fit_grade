import 'package:fit_grade/Examples/User/user_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Widgets/app_bar_primary.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({
    Key? key,
  }) : super(key: key);

  ///Methods
  void onSubmit(ref, value) {
    ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(ref, value) {
    ref.read(userProvider.notifier).updateAge(int.parse(value));
  }

  void onSubmitWeight(ref, value) {
    ref.read(userProvider.notifier).updateWeight(double.parse(value));
  }

  // not used as not tied to button... and not working
  // String onSubmitData(ref, weight, age) {
  //   final user = ref.watch(userProvider);
  //   final rank =
  //       ref.read(rankProvider.notifier).calcRank(user.weight, user.age);
  //   return rank;
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final rank =
        ref.watch(rankProvider.notifier).calcRank(user.weight, user.age);
    return Scaffold(
      appBar: AppBarPrimary(title: user.name),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'Drop name here'),
              onChanged: (value) => onSubmit(ref, value), //loads while typing
            ),
            const SizedBox(height: 8),
            TextField(
              decoration:
                  const InputDecoration(hintText: 'Times around the sun'),
              onSubmitted: (value) =>
                  onSubmitAge(ref, value), //loads after 'return'
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(hintText: 'What your density'),
              onSubmitted: (value) =>
                  onSubmitWeight(ref, value), //loads after 'return'
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Age:  '),
                  Text(
                    user.age.toString(),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      const Text('Rank:  '),
                      Text(
                        rank.toString(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // TextButton(
            //     onPressed: () => onSubmitData(ref, user.weight, user.age),
            //     child: const Text('Check Rank'))
          ],
        ),
      ),
    );
  }
}
