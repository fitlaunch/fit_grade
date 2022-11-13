import 'package:fit_grade/Views/Settings/settings.dart';
import 'package:flutter/material.dart';

import '../Views/Authenticate/login.dart';
import '../Views/Support/contact_support.dart';

class AppBarPrimary extends StatelessWidget with PreferredSizeWidget {
  AppBarPrimary({required this.title, Key? key})
      : preferredSize = const Size.fromHeight(60),
        super(key: key);

  @override
  final Size preferredSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff004369),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              //action for notifications icon button
            },
          ),
          Theme(
            data: Theme.of(context).copyWith(
                textTheme: const TextTheme().apply(bodyColor: Colors.black),
                dividerColor: Colors.white,
                iconTheme: const IconThemeData(color: Colors.white)),
            child: PopupMenuButton<int>(
              color: Colors.black,
              itemBuilder: (context) => [
                const PopupMenuItem<int>(value: 0, child: Text("Support")),
                const PopupMenuItem<int>(value: 1, child: Text("Settings")),
                const PopupMenuItem<int>(
                    value: 2, child: Text("Privacy Policy")),
                const PopupMenuDivider(),
                PopupMenuItem<int>(
                    value: 7,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text("Logout")
                      ],
                    )),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}

void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ContactSupport()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Settings()));
      break;
    case 2:
      print("Privacy Clicked");
      break;
    case 7:
      print("User Logged out");
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Login()), (route) => false);
      break;
  }
}
