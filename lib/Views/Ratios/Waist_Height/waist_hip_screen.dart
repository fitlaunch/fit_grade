import 'package:fit_grade/Views/Ratios/Waist_Height/provide_waist_hip_ratio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Widgets/app_bar_primary.dart';
import '../ratio_providers.dart';

class WaistHipScreen extends ConsumerWidget {
  const WaistHipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _waist = ref.watch(waistProvider.notifier);
    final _waistHipRatio = ref.watch(waistHipRatioProvider.notifier);
    final _hip = ref.watch(hipProvider.notifier);

    return Scaffold(
      appBar: AppBarPrimary(title: 'Waist  Assessment'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Enter some stuff to get your bmi'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.amber,
                        //child: InputContent(
                        //label: 'HEIGHT (cm)',
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Waist (inch)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            _waist.state = value;
                            //print(value);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.amber,
                        //child: InputContent(
                        //label: 'WEIGHT (kg)',

                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Hip (inch)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            _hip.state = value;
                            //print(value);
                          },
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: TextButton(
                      child: const Text('CALCULATE'),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
//todo fix this so calculating with blank fields prompts to complete
                        ///this is generating alert with data entered?
                        // if (_bmiValue.state == '') {
                        //   showDialog(
                        //     context: context,
                        //     builder: (_) {
                        //       return AlertDialog(
                        //         content:
                        //             const Text("Enter Your Height and Weight"),
                        //         actions: [
                        //           TextButton(
                        //             child: const Text("Cancel"),
                        //             onPressed: () => Navigator.pop(context),
                        //           ),
                        //           TextButton(
                        //             child: const Text("OK"),
                        //             onPressed: () => Navigator.pop(context),
                        //           ),
                        //         ],
                        //       );
                        //     },
                        //   );
                        // } else
                        {
                          _waistHipRatio.state = ProvideWaistHipRatio()
                              .getWaistHipRatioValue(int.parse(_waist.state),
                                  int.parse(_hip.state));
                        }
                      }),
                ),
                const SizedBox(height: 20),
                theText(ref),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text theText(WidgetRef ref) {
    return Text(
      ref.watch(waistHipRatioProvider).toString(),
      style: const TextStyle(color: Colors.green, fontSize: 40),
    );
  }
}
