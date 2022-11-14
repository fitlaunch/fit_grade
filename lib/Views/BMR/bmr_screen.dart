import 'package:fit_grade/Views/BMR/provide_bmr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Widgets/app_bar_primary.dart';
import '../BMI/provide_bmi.dart';

class BMRScreen extends ConsumerWidget {
  const BMRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _weight = ref.watch(weightProvider.notifier);
    final _age = ref.watch(ageProvider.notifier);
    final _bmrMale = ref.watch(bmrMaleProvider.notifier);
    final _bmrFem = ref.watch(bmrFemProvider.notifier);
    final _height = ref.watch(heightProvider.notifier);
    final _genBtnBackground = ref.watch(genBtnBackgroundProvider.notifier);

    return Scaffold(
      appBar: AppBarPrimary(title: 'BMR Assessment'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Enter some stuff to get your bmr'),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Card(
                            color: Colors.amber,
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
                                _weight.state = value;
                                //print(value);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Card(
                            color: Colors.amber,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Age (years)',
                              ),
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                _age.state = value;
                                //print(value);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 8),
                                child: TextButton(
                                  style: ButtonStyle(
                                      shadowColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.grey),
                                      elevation:
                                          MaterialStateProperty.all<double>(
                                              5.0),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        ref.watch(genBtnBackgroundProvider) ==
                                                GenBtnBackground.activeMale
                                            ? Colors.amber
                                            : Colors.grey,
                                      ),
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                      )),
                                  onPressed: () {
                                    _genBtnBackground.state =
                                        GenBtnBackground.activeMale;
                                  },
                                  child: const Text(
                                    'Male',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 8),
                                child: TextButton(
                                  style: ButtonStyle(
                                      shadowColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.grey),
                                      elevation:
                                          MaterialStateProperty.all<double>(
                                              5.0),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        ref.watch(genBtnBackgroundProvider) ==
                                                GenBtnBackground.activeFem
                                            ? Colors.amber
                                            : Colors.grey,
                                      ),
                                      shape: MaterialStateProperty.all<
                                          OutlinedBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                      )),
                                  onPressed: () {
                                    _genBtnBackground.state =
                                        GenBtnBackground.activeFem;
                                  },
                                  child: const Text(
                                    'Female',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                ref.watch(genBtnBackgroundProvider) ==
                        GenBtnBackground.activeMale
                    ? Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: [
                            TextButton(
                              child: const Text('CALCULATE'),
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                if (_genBtnBackground.state ==
                                    GenBtnBackground.activeMale) {
                                  _bmrMale.state = ProvideMaleBMR().getMaleBmr(
                                    int.parse(_height.state),
                                    int.parse(_weight.state),
                                    int.parse(_age.state),
                                  );
                                }
                              },
                            ),
                            theManText(ref),
                          ],
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: [
                            TextButton(
                              child: const Text('CALCULATE'),
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                if (_genBtnBackground.state ==
                                    GenBtnBackground.activeFem) {
                                  _bmrFem.state = ProvideFemBMR().getFemBmr(
                                    int.parse(_height.state),
                                    int.parse(_weight.state),
                                    int.parse(_age.state),
                                  );
                                }
                              },
                            ),
                            theFemText(ref),
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

  Text theManText(WidgetRef ref) {
    return Text(
      ref.watch(bmrMaleProvider).toString(),
      style: const TextStyle(color: Colors.green, fontSize: 40),
    );
  }

  Text theFemText(WidgetRef ref) {
    return Text(
      ref.watch(bmrFemProvider).toString(),
      style: const TextStyle(color: Colors.green, fontSize: 40),
    );
  }
}
