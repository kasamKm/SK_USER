import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rxdart/rxdart.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:user_app/utils/app_router.gr.dart';

import '../../utils/square_ios_corner.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BehaviorSubject<DateTime> selectDate = BehaviorSubject<DateTime>.seeded(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //work
                        CircleAvatar(
                          radius: 28,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CachedNetworkImage(
                                imageUrl: '',
                                height: 20.h,
                                width: 20.w,
                                fit: BoxFit.cover,
                                errorWidget: (context, exception, stackTrace) {
                                  return Image.asset(
                                    ImageAssetPath.icPerson,
                                    height: 20.h,
                                    width: 20.w,
                                  );
                                }),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Kasim 👋",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lexend(
                                  fontSize: 18.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "+91 1234567890",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lexend(
                                    fontSize: 16.sp,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // AutoRouter.of(context).push(const NotificationRoute());
                          },
                          icon: Badge(
                            backgroundColor: Theme.of(context).cardColor,
                            offset: Offset(5, -10),
                            label: Text(
                              '8',
                              style: GoogleFonts.urbanist(
                                  fontSize: 10.sp, color: Colors.white, fontWeight: FontWeight.normal),
                            ),
                            child: SvgPicture.asset(
                              ImageAssetPath.icNotification,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              StreamBuilder<DateTime>(
                stream: selectDate,
                builder: (context, snapshot) {
                  return TableCalendar(
                    focusedDay: selectDate.value,
                    firstDay: DateTime.now().subtract(Duration(days: 7)),
                    lastDay: DateTime.now(),
                    daysOfWeekHeight: 20.h,
                      rowHeight: 52.h,
                    selectedDayPredicate: (day) {
                      // Use `selectedDayPredicate` to determine which day is currently selected.
                      // If this returns true, then `day` will be marked as selected.
          
                      // Using `isSameDay` is recommended to disregard
                      // the time-part of DateTime objects.
                      return isSameDay(selectDate.value, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(selectDate.value, selectedDay)) {
                        // Call `setState()` when updating the selected day
                        setState(() {
                          selectDate.add(selectedDay);
                        });
                      }
                    },
                    calendarFormat: CalendarFormat.week,
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                      weekendStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                    ),
                    calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      rangeStartDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      rangeEndDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      defaultDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      weekendDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      withinRangeDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      disabledDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      outsideDecoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      todayDecoration:BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey)),
                      defaultTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                      withinRangeTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                      weekendTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                      outsideTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                      disabledTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColorDark, fontWeight: FontWeight.normal),
                      todayTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                      selectedTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).disabledColor, fontWeight: FontWeight.normal),
                    ),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: false,
                      leftChevronVisible: true,
                      rightChevronVisible: true,
                      headerPadding: EdgeInsets.all(0),
                      titleTextStyle: GoogleFonts.lexend(
                          fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
                    ),
                    // Provide other properties according to your needs.
                  );
                }
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Today History', style: GoogleFonts.lexend(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor
                          ),),
                          TextButton(onPressed: (){
                            final tabsRouter = AutoTabsRouter.of(context);
                            tabsRouter.setActiveIndex(1);
                          }, child: Text("See All",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.lexend(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).cardColor
                            ),))
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).canvasColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 15
                            )
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 35.h,
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).cardColor.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: SvgPicture.asset(ImageAssetPath.icTakeIn,),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Text('Drop Off', style: GoogleFonts.lexend(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Theme.of(context).primaryColor
                                    ),),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).hintColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Text('Active', style: GoogleFonts.lexend(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff30BEB6)
                                  ),),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('10:00 AM - 12/09/24', style: GoogleFonts.lexend(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor
                                ),),
                                Text('Teka', style: GoogleFonts.lexend(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor
                                ),),
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Divider(
                              color: Theme.of(context).primaryColorDark.withOpacity(0.2),
                            ),
                            SizedBox(
                              height: 55.h,
                              child: Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        itemCount: 6,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return  Container(
                                            width: 40.h,
                                            decoration: BoxDecoration(
                                                color: Theme.of(context).canvasColor,
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Center(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text('7"', style: GoogleFonts.lexend(
                                                      fontSize: 13.sp,
                                                      fontWeight: FontWeight.w500,
                                                      color: Theme.of(context).primaryColor
                                                  ),),
                                                  SizedBox(height: 5.h,),
                                                  Text('50', style: GoogleFonts.lexend(
                                                      fontSize: 13.sp,
                                                      fontWeight: FontWeight.w300,
                                                      color: Theme.of(context).primaryColor
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          ); // Replace with your item widget
                                        },
                                        separatorBuilder: (context, index) => SizedBox(width: 10.w), // Gap widget
                                      ),
                                    ),
                                    Flexible(
                                        flex: 3,
                                        child: Container(
                                          width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).dividerColor,
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(8))
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Total',style: GoogleFonts.lexend(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).primaryColor
                                          ), ),
                                          SizedBox(height: 5.h,),
                                          Text('130',style: GoogleFonts.lexend(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).primaryColor
                                          ), )
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: 16.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Balance', style: GoogleFonts.lexend(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor
                          ),),
                          TextButton(onPressed: (){
                            final tabsRouter = AutoTabsRouter.of(context);
                            tabsRouter.setActiveIndex(2); // Assuming Balance is at index 2
                          }, child: Text("See All",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.lexend(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).cardColor
                            ),))
                        ],
                      ),
                      Hero(
                        tag: 'B1',
                        child: Container(
                          height: 100.h,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Theme.of(context).canvasColor,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38.withOpacity(0.1),
                                    spreadRadius: 3,
                                    blurRadius: 15
                                )
                              ]
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).focusColor,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Remaining', style: GoogleFonts.lexend(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFF7F74)
                                      ),),
                                      SizedBox(height: 5.h,),
                                      Text('\$900', style: GoogleFonts.lexend(
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFF7F74)
                                      ),),
                                    ],
                                  ),
                                ),

                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).hintColor,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15))
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Credit', style: GoogleFonts.lexend(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff30BEB6)
                                      ),),
                                      SizedBox(height: 5.h,),
                                      Text('\$500', style: GoogleFonts.lexend(
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff30BEB6)
                                      ),),
                                    ],
                                  ),
                                ),

                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Statistic', style: GoogleFonts.lexend(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor
                          ),),
                          TextButton(onPressed: (){
                            //AutoRouter.of(context).replace(const RegisterRoute());
                          }, child: Text("See All",
                            textAlign: TextAlign.end,
                            style: GoogleFonts.lexend(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).cardColor
                            ),))
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 113.h,
                            width: 162.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38.withOpacity(0.1),
                                      spreadRadius: 3,
                                      blurRadius: 15
                                  )
                                ]
                            ),
                            child: new Material(
                                color: Theme.of(context).primaryColor == Colors.black  ? Color(0xffF5F9FF) : Color(0xff121923),
                                shape: new SquircleBorder(
                                  superRadius: 18,
                                  side: BorderSide(color: Theme.of(context).cardColor, width: 1.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Total\nChoka', style: GoogleFonts.lexend(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).primaryColor
                                      ),),
                                      Text('30', style: GoogleFonts.lexend(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).cardColor
                                      ),),
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Container(
                            height: 113.h,
                            width: 162.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38.withOpacity(0.1),
                                      spreadRadius: 3,
                                      blurRadius: 15
                                  )
                                ]
                            ),
                            child: new Material(
                                color: Theme.of(context).primaryColor == Colors.black ? Color(0xffFAFDF5) : Color(0xff171D19),
                                shape: new SquircleBorder(
                                  superRadius: 18,
                                  side: BorderSide(color: Color(0xffA3D139), width: 1.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Total\nTeka', style: GoogleFonts.lexend(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).primaryColor
                                      ),),
                                      Text('50', style: GoogleFonts.lexend(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffA3D139)
                                      ),),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 113.h,
                            width: 162.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38.withOpacity(0.1),
                                      spreadRadius: 3,
                                      blurRadius: 15
                                  )
                                ]
                            ),
                            child: new Material(
                                color: Theme.of(context).hintColor,
                                shape: new SquircleBorder(
                                  superRadius: 18,
                                  side: BorderSide(color: Color(0xff30BEB6), width: 1.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Total\nMiller', style: GoogleFonts.lexend(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).primaryColor
                                      ),),
                                      Text('30', style: GoogleFonts.lexend(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500,
                                          color:Color(0xff30BEB6)
                                      ),),
                                    ],
                                  ),
                                )
                            ),
                          ),


                          Container(
                            height: 113.h,
                            width: 162.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38.withOpacity(0.1),
                                      spreadRadius: 3,
                                      blurRadius: 15
                                  )
                                ]
                            ),
                            child: new Material(
                                color: Theme.of(context).focusColor,
                                shape: new SquircleBorder(
                                  superRadius: 18,
                                  side: BorderSide(color: Color(0xffFF7F74), width: 1.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Other\nProducts', style: GoogleFonts.lexend(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).primaryColor
                                      ),),
                                      Text('See All', style: GoogleFonts.lexend(
                                          fontSize: 24.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFF7F74)
                                      ),),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return false;
    }
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
