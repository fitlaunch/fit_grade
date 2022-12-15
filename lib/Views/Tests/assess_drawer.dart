import 'package:fit_grade/Views/Cardio_Resp/cardio_screen.dart';
import 'package:fit_grade/Views/Flexibility/flexibility_screen.dart';
import 'package:fit_grade/Views/Genetic/genetic_assess_screen.dart';
import 'package:fit_grade/Views/Ratios/anthro_measures_screen.dart';
import 'package:fit_grade/Views/Str_Endur/str_endur_screen.dart';
import 'package:fit_grade/Views/Str_Pwr/str_power.dart';
import 'package:fit_grade/Views/Strength/strength_screen.dart';
import 'package:flutter/material.dart';

import 'Batteries/batteries_screen.dart';
import 'Challenges/challenge_screen.dart';

class AssessDrawer extends StatelessWidget {
  const AssessDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Drawer(
        //backgroundColor: Colors.amber,
        elevation: 25,
        //shadowColor: Colors.black54,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFBCE5FC), Color(0xFFE3F2FD)],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: const EdgeInsets.symmetric(vertical: 30),
                curve: Curves.bounceInOut,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'What\'s Your Grade?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '''Select an Assessment,                      
Full Battery or Challenge''',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.earbuds_battery_rounded),
                title: const Text('Assessment Batteries'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BatteriesScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.compass_calibration_rounded),
                title: const Text('Challenges'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChallengeScreen(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.health_and_safety_rounded),
                title: const Text('Genetic Wellness Assess'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GeneticAssessScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.blur_circular_rounded),
                title: const Text('Girth, Ratios, & BF%'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnthroMeasuresScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.directions_run_rounded),
                title: const Text('Cardio-Respiratory (VO2max)'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardioScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.power_input_outlined),
                title: const Text('Muscular-Power'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StrPowerScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.fitness_center_rounded),
                title: const Text('Muscular-Strength'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StrengthScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.join_inner_rounded),
                title: const Text('Muscular-Endurance'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StrEndurScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.area_chart_rounded),
                title: const Text('Flexibility'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FlexibilityScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
