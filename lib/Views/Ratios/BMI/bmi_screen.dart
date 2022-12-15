import 'package:fit_grade/Utils/Global_Providers/Gender/gender_widget.dart';
import 'package:fit_grade/Views/Ratios/BMI/bmi_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Widgets/app_bar_primary.dart';
import 'provide_bmi.dart';

class BMIScreen extends ConsumerWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weight = ref.watch(weightProvider.notifier);
    final _bmiValue = ref.watch(bmiValueProvider.notifier);
    final _height = ref.watch(heightProvider.notifier);

    return Scaffold(
      appBar: AppBarPrimary(title: 'BMI Assessment'),
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
                            hintText: 'Height (inch)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            _height.state = value;
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
                            hintText: 'Weight (lbs)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            weight.state = value;
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
                          _bmiValue.state = ProvideBMI().getBmiValue(
                              int.parse(_height.state),
                              int.parse(weight.state));
                        }
                      }),
                ),
                const SizedBox(height: 20),
                theText(ref),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BMIPage()));
                  },
                  child: const Text('Other RP BMI'),
                ),
                const Text(
                    'gender widget still not yet working with riverpod - FYI, errors if you advance.'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GenderWidget()));
                  },
                  child: const Text('Gender Select'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text theText(WidgetRef ref) {
    return Text(
      ref.watch(bmiValueProvider).toString(),
      style: const TextStyle(color: Colors.green, fontSize: 40),
    );
  }
}
