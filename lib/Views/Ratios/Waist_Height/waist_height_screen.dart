import 'package:fit_grade/Views/Ratios/Waist_Height/provide_waist_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Widgets/app_bar_primary.dart';

class WaistHeightScreen extends ConsumerWidget {
  const WaistHeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final waist = ref.watch(waistProvider.notifier);
    // final waistHeightRatio = ref.watch(waistHeightRatioProvider.notifier);
    // final height = ref.watch(heightProvider.notifier);
    final waistHeightRatio = ref.watch(waistHeightRatioProvider);
    final height = ref.watch(heightProvider);
    final waist = ref.watch(waistProvider);

    return Scaffold(
      appBar: AppBarPrimary(title: 'Waist/Height  Assessment'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'Enter some stuff to get your waist to height ratio'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.blueAccent.shade200,
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
                            ref.read(waistProvider);
                            print(waistProvider.toString());
                            //waist.state = value;
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        color: Colors.blueAccent.shade200,
                        //child: InputContent(
                        //label: 'WEIGHT (kg)',

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
                            ref.read(heightProvider);
                            print(heightProvider.toString());
                            //height.state = value;
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
                      onPressed: () => ref
                          .read(waistHeightRatioProvider.notifier)
                          .getWaistHeightValue(
                            waist,
                            height,
                          )
                      //ref.read(waistHeightRatioProvider.notifier)
                      //ProvideWaistHeight()
                      //.getWaistHeightValue(waist, height),
                      ),
                ),
                const SizedBox(height: 25),
                Text(
                  // ref.watch(waistHeightRatioProvider).toString(),
                  'Waist to Height Ratio is: $waistHeightRatio',
                  style: const TextStyle(color: Colors.purple),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
