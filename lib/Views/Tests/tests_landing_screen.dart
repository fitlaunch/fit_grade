import 'package:fit_grade/Views/Authenticate/login.dart';
import 'package:fit_grade/Views/LeaderBoards/leader_boards_screen.dart';
import 'package:fit_grade/Views/Ratios/BMI/bmi_screen.dart';
import 'package:fit_grade/Widgets/app_bar_primary.dart';
import 'package:flutter/material.dart';

import '../Counter/counter_screen.dart';
import '../Ratios/BMR/bmr_screen.dart';
import '../Ratios/Waist_Height/waist_height_screen.dart';
import 'assess_drawer.dart';

///need to adjust something on BAB (southernappbar) so that it doesn't default
///to the 0 position screen when landing on a page with BAB for first time.

class TestsLandingScreen extends StatelessWidget {
  const TestsLandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(title: 'TESTS & BATTERIES'),
      //bottomNavigationBar: SouthernAppBar(),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () =>
              Scaffold.of(context).openDrawer(), // <-- Opens drawer.
        );
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'Will be changing this \n'
                'to home for tests & batteries',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: const Text('LogIn')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LeaderBoardsScreen()));
                },
                child: const Text('Leader Board')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CounterScreen()));
                },
                child: const Text('Counter')),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WaistHeightScreen()));
              },
              child: const Text('Waist-Height'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BMIScreen()));
              },
              child: const Text('BMI'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BMRScreen()));
              },
              child: const Text('BMR'),
            ),
          ],
        ),
      ),
      drawer: const AssessDrawer(),
    );
  }
}
