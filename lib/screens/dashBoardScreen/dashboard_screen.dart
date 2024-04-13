import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/utils/app_router.gr.dart';


@RoutePage()
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      inheritNavigatorObservers: true,
      routes: [
        HomeRoute(),
        HistoryRoute(),
        BalanceRoute(),
        ProfileRoute()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Theme.of(context).canvasColor,
          showUnselectedLabels: true,
          selectedItemColor: Theme.of(context).cardColor,
          unselectedItemColor: Theme.of(context).primaryColorDark,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
            // Call an initialization method for the selected tab.
            //_initializeTab(index);
          },
          selectedLabelStyle:
          GoogleFonts.lexend(fontSize: 10.sp, color: Theme.of(context).cardColor, fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, color: Theme.of(context).primaryColorDark,),
              activeIcon: Icon(CupertinoIcons.home, color: Theme.of(context).cardColor,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_plaintext, color: Theme.of(context).primaryColorDark,),
              activeIcon: Icon(CupertinoIcons.doc_plaintext, color: Theme.of(context).cardColor,),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.creditcard, color: Theme.of(context).primaryColorDark,),
              activeIcon: Icon(CupertinoIcons.creditcard, color: Theme.of(context).cardColor,),
              label: 'Balance',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled, color: Theme.of(context).primaryColorDark,),
              activeIcon: Icon(CupertinoIcons.profile_circled, color: Theme.of(context).cardColor,),
              label: 'Profile',
            ),
          ],
        );
      });
  }
}
