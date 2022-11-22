import 'package:fit_grade/Views/Ratios/anthro_measures_screen.dart';
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
        shadowColor: Colors.black54,
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
                padding: const EdgeInsets.symmetric(vertical: 50),
                curve: Curves.bounceInOut,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Column(
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
                    SizedBox(height: 5),
                    Text(
                      'Select an Assessment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
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
                title: const Text('Determine VO2max'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Muscle-Power'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Muscle-Strength'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Muscle-Endurance'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Power Rating'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Flexibility'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
