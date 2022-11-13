import 'package:flutter/material.dart';

//todo emoji specific to each attribute
//todo tie in dynamic score loading for the specific user profile
//todo firestore and shared-preferences or hive  (fit together somehow)

class BMITile extends StatelessWidget {
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
                  children: const [Text('BMI')],
                ),
                Row(
                  children: const [Text('28.6')],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WaistHipTile extends StatelessWidget {
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
    );
  }
}

class Other1Tile extends StatelessWidget {
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
