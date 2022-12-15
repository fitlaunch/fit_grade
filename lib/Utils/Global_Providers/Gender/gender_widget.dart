import 'package:fit_grade/Utils/Global_Providers/Gender/provide_gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenderWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genderMale = ref.watch(maleProvider); //.notifier).selectGender1();
    final genderFemale =
        ref.watch(femaleProvider); //.notifier).selectGender2();
    final gender = ref.watch(genderProvider);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(
              title: const Text('Male'),
              value: 1,
              groupValue: genderProvider,
              onChanged: (v) =>
                  ref.read(genderProvider.notifier).updateGender(v = 1)
              //(value) => genderMale.state = value,
              //ref.read(genderMale?.notifier.selectGender1());

              //ProvideGender.selectGender1(),
              ),
          RadioListTile(
              title: const Text('Female'),
              value: 2,
              groupValue: genderProvider,
              onChanged: (value) =>
                  ref.read(genderProvider.notifier).updateGender(value = 2)
              //genderFemale.state = value,
              ),
        ],
      ),
    );
  }
}
