import 'package:fit_grade/Views/Account_Page/account_screen.dart';
import 'package:fit_grade/Views/Community/community_screen.dart';
import 'package:fit_grade/Views/Tests/tests_landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../Views/LeaderBoards/leader_boards_screen.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class SouthernAppBar extends ConsumerWidget {
  SouthernAppBar({Key? key}) : super(key: key);

  List<Widget> pageList = [
    const AccountScreen(),
    const CommunityScreen(),
    const TestsLandingScreen(),
    const LeaderBoardsScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //const textStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
    final pageIndex = ref.watch(indexProvider);
    //const iconStyle = Color(0xff01949A);

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Colors.brown, //const Color(0xffE5DDC8),
          selectedItemColor: const Color(0xffDB1F48),
          unselectedItemColor: const Color(0xff01949A),
          selectedFontSize: 16,
          unselectedFontSize: 12,
          selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold, color: Color(0xffDB1F48)),
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.deepOrange), //Color(0xff01949A)),
          elevation: 20,
          onTap: (index) {
            ref.read(indexProvider.notifier).state = index;
          },
          //index: ref.watch(indexProvider),
          currentIndex: pageIndex, //ref.watch(indexProvider),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                  //color: iconStyle,
                  size: 30,
                ),
                label: 'Account'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people_alt_outlined,
                //color: iconStyle,
                size: 30,
              ),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment_outlined,
                //color: iconStyle,
                size: 30,
              ),
              label: 'Assess',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.leaderboard_outlined,
                  //color: iconStyle,
                  size: 30,
                ),
                label: 'Leaderboard'),
          ],
        ),
        body: pageList.elementAt(ref.read(indexProvider.notifier).state));
  }
}
