import 'package:fit_grade/Views/Authenticate/login.dart';
import 'package:fit_grade/Widgets/app_bar_primary.dart';
import 'package:flutter/material.dart';

import '../Account_Page/account_screen.dart';
import 'assess_drawer.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(
        title: 'TESTS & BATTERIES',
      ),
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios_new),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   title: const Center(
      //     child: Text(
      //       'Account Screen',
      //     ),
      //   ),
      // ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountScreen()));
                },
                child: const Text('Account'))
          ],
        ),
      ),
      drawer: const AssessDrawer(),
    );
  }
}
