import 'package:fit_grade/Views/BMR/bmr_screen.dart';
import 'package:flutter/material.dart';

import '../BMI/bmi_screen.dart';

//todo emoji specific to each attribute
//todo tie in dynamic score loading for the specific user profile
//todo firestore and shared-preferences or hive  (fit together somehow)

//horizontal bubble tiles for at a glance current/last health measures

class BMITile extends StatelessWidget {
  const BMITile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BMIScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent[100],
          borderRadius: BorderRadius.circular(30),
        ),
        height: 30,
        width: 90,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: const [Icon(Icons.emoji_nature_outlined)],
              ),
              Column(
                children: [
                  Row(
                    children: const [Text('BMI')],
                  ),
                  Row(
                    //todo feed current/last bmi here as well as bmi and battery history
                    //firebase storage?
                    children: const [Text('28.6')],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WaistHipTile extends StatelessWidget {
  const WaistHipTile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(30),
      ),
      height: 30,
      width: 90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: const [Icon(Icons.emoji_symbols_outlined)],
            ),
            Column(
              children: [
                Row(
                  children: const [Text('W/H')],
                ),
                Row(
                  children: const [Text('.97')],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BMRTile extends StatelessWidget {
  const BMRTile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BMRScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent[100],
            borderRadius: BorderRadius.circular(30),
          ),
          height: 30,
          width: 90,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: const [Icon(Icons.emoji_people_outlined)],
                ),
                Column(
                  children: [
                    Row(
                      children: const [Text('BMR')],
                    ),
                    Row(
                      children: const [Text('2137')],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class Other1Tile extends StatelessWidget {
  const Other1Tile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(30),
      ),
      height: 30,
      width: 90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: const [Icon(Icons.emoji_people_outlined)],
            ),
            Column(
              children: [
                Row(
                  children: const [Text('???')],
                ),
                Row(
                  children: const [Text('45')],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Other2Tile extends StatelessWidget {
  const Other2Tile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(30),
      ),
      height: 30,
      width: 90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: const [Icon(Icons.emoji_people_outlined)],
            ),
            Column(
              children: [
                Row(
                  children: const [Text('??')],
                ),
                Row(
                  children: const [Text('8989')],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
