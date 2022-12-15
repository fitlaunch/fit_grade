import 'package:fit_grade/Views/Ratios/Waist_Height/provide_waist_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Widgets/app_bar_primary.dart';

class WaistHeightScreen extends ConsumerWidget {
  WaistHeightScreen({Key? key}) : super(key: key);

  TextEditingController waistController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // these work for statenotifier/statenotifierprovider but not notifier/notifierprovider
    // final waist = ref.watch(waistProvider.notifier);
    // final waistHeightRatio = ref.watch(waistHeightRatioProvider.notifier);
    // final height = ref.watch(heightProvider.notifier);
    final waistHeightRatio = ref.watch(waistHeightRatioProvider);
    final height = ref.watch(heightProvider);
    final waist = ref.watch(waistProvider);
    dialogRef(ref, context);

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
                          controller: waistController,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            hintText: 'Waist (inch)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            waist;
                            // ref.read(waistProvider);
                            print(waist.toString());
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
                          controller: heightController,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            hintText: 'Height (inch)',
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            height;
                            //ref.read(heightProvider);
                            print(height.toString());
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
                        .getWaistHeightValue(waist, height),
                    //ref.read(waistHeightRatioProvider.notifier)
                    //ProvideWaistHeight()
                    //.getWaistHeightValue(waist, height),
                  ),
                ),
                const SizedBox(height: 25),
                Text(waistHeightRatio.toString())
                // Text(
                //   // ref.watch(waistHeightRatioProvider).toString(),
                //   'Waist to Height Ratio is: waistHeightRatio',
                //   style: const TextStyle(color: Colors.purple),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //ToDo: pull this to own widget file for use with all individual assessments
  void dialogRef(WidgetRef ref, BuildContext context) {
    ref.listen<int>(waistHeightRatioProvider, (previous, next) {
      if (next <= .40) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  title: const Text('Warning'),
                  content: const Text('Your too thin. \n Score: 4/10'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    )
                  ]);
            });
      } else if (next > .4 && next < 52) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  title: const Text('NOICE'),
                  content:
                      const Text('Your too just about right. \n Score: 9/10'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    )
                  ]);
            });
      }
    });
  }
}
