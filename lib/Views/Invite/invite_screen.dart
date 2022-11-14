import 'package:fit_grade/Widgets/app_bar_primary.dart';
import 'package:flutter/material.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPrimary(title: 'Invite Connections'),
      body: const Center(
        child: Text('invite folks to join you'),
      ),
    );
  }
}
