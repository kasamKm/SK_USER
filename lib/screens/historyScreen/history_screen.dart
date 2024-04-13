import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:user_app/screens/historyScreen/takeIn_screen.dart';

import '../../utils/square_ios_corner.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor:  Theme.of(context).dividerColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).dividerColor,
          title: Text(
            'History',
            style:
                GoogleFonts.lexend(fontSize: 24.sp, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor),
          ),
          centerTitle: false,
          leadingWidth: 0.w,
          leading: Container(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.withOpacity(0.2)),
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: false,
                      automaticIndicatorColorAdjustment: false,
                      tabAlignment: TabAlignment.center,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue,
                      ),
                      dividerHeight: 0,
                      labelColor: Colors.white,
                      labelStyle: GoogleFonts.lexend(fontSize: 13.sp, fontWeight: FontWeight.w500, color: Colors.white),
                      unselectedLabelStyle: GoogleFonts.lexend(
                          fontSize: 13.sp, fontWeight: FontWeight.w300, color: Theme.of(context).primaryColor),
                      unselectedLabelColor: Theme.of(context).primaryColor,
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      tabs: [
                        Container(
                          width: (MediaQuery.of(context).size.width - 150) / 2,
                          alignment: Alignment.center,
                          child: Tab(text: 'Drop Off'),
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 150) / 2,
                          alignment: Alignment.center,
                          child: Tab(text: 'Pick Up'),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.calendar),
                  color: Theme.of(context).primaryColor,
                  onPressed: () async {
                    DateTime today = DateTime.now();
                    DateTime? newDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(
                          today.year - 100,
                          today.month,
                          today.day,
                          today.hour,
                          today.minute,
                          today.second,
                          today.millisecond,
                          today.microsecond,
                        ),
                        lastDate: DateTime(
                          today.year,
                          today.month,
                          today.day,
                          today.hour,
                          today.minute,
                          today.second,
                          today.millisecond,
                          today.microsecond,
                        ),
                        builder: (context, child) {
                          var brightness = Theme.of(context).primaryColor;
                          print(brightness == Colors.black);
                          return Theme(
                            data: brightness != Colors.black
                                ? Theme.of(context).copyWith(
                                    // Dark theme configuration
                                    colorScheme: ColorScheme.dark(
                                      primary: Theme.of(context).cardColor,
                                      onPrimary: Theme.of(context).primaryColor,
                                      onSurface: Theme.of(context).primaryColor,
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        surfaceTintColor: Theme.of(context).cardColor, // button text color
                                      ),
                                    ),
                                  )
                                : Theme.of(context).copyWith(
                                    // Light theme configuration
                                    colorScheme: ColorScheme.light(
                                      primary: Theme.of(context).cardColor,
                                      onPrimary: Colors.white, // assuming white text on primary color for light theme
                                      onSurface: Theme.of(context).primaryColor,
                                      // assuming black text on surface for light theme
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        surfaceTintColor: Theme.of(context).cardColor, // button text color
                                      ),
                                    ),
                                  ),
                            child: child!,
                          );
                        },
                        initialDate: DateTime(
                          today.year,
                          today.month,
                          today.day,
                          today.hour,
                          today.minute,
                          today.second,
                          today.millisecond,
                          today.microsecond,
                        ));
                  },
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  TakeInHistoryScreen(),
                  Center(child: Text('Transit Tab')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
