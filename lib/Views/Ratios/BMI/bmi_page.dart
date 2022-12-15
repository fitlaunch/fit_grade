import 'package:fit_grade/Views/Ratios/BMI/bmi_notifier.dart';
import 'package:fit_grade/Widgets/app_bar_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// why bmi result defaulting to NaN?
/// this one appears cleaner than the other bmi

class BMIPage extends ConsumerWidget {
  const BMIPage({
    Key? key,
  }) : super(key: key);

  onSubmitWeight(ref, value) =>
      ref.read(bmiInputProvider.notifier).updateWeight(double.parse(value));

  onSubmitHeight(ref, value) =>
      ref.read(bmiInputProvider.notifier).updateHeight(double.parse(value));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final input = ref.watch(bmiInputProvider);
    final userBMI =
        ref.watch(bmiProvider.notifier).calcBMI(input.weight, input.height);

    return Scaffold(
      appBar: AppBarPrimary(title: 'BMI Assess II'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Intro details on bmi here'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.lightBlue,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Weight (lbs)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) => onSubmitWeight(ref, value),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.lightBlue,
                        child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Height (inch)',
                            ),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            onChanged: (value) => onSubmitHeight(ref, value)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('BMI:  '),
                      Text(
                        userBMI,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
