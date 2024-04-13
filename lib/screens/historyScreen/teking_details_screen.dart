import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/widgets/dash_divider.dart';

import '../../constants/asset_path.dart';


@RoutePage()
class TakingDetailsScreen extends StatefulWidget {
  const TakingDetailsScreen({super.key});

  @override
  State<TakingDetailsScreen> createState() => _TakingDetailsScreenState();
}

class _TakingDetailsScreenState extends State<TakingDetailsScreen> {

  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Theme.of(context).dividerColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).dividerColor,
        title: Text(
          'SK120924013055',
          style:
          GoogleFonts.lexend(fontSize: 24.sp, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor),
        ),
        centerTitle: false,
        leadingWidth: 30.w,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 16.w),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Theme.of(context).hintColor,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Active', style: GoogleFonts.lexend(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff30BEB6)
              ),),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                      Text('12/09/24 - 10:30 AM - ', style: GoogleFonts.lexend(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColor
                      )),
                  SizedBox(width: 10.w,),
                  Text('Thursday', style: GoogleFonts.lexend(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor
                  )),
                ],
              ),
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text('Teka + Choka', style: GoogleFonts.lexend(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor
                  )),
                ),
                SizedBox(height: 5.h,),
                MySeparator(),
                SizedBox(height: 5.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Current - Teka', style: GoogleFonts.lexend(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor
                  )),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
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
                        SizedBox(
                          height: 55.h,
                          child: Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: 3,
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
                                    flex: 2,
                                    child: Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).dividerColor,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), topRight: Radius.circular(8))
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
                ),
                SizedBox(height: 20.h,),
                MySeparator(),
                SizedBox(height: 15.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Records - Teka', style: GoogleFonts.lexend(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor
                  )),
                ),
                SizedBox(height: 10.h,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
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
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor == Colors.black  ? Color(0xffF5F9FF) : Color(0xff121923),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:  Text('Pick Up', style: GoogleFonts.lexend(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).cardColor
                              )),
                            ),
                            Text('12-09-24 10:30 AM', style: GoogleFonts.lexend(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).primaryColor
                            )),
                          ],
                        ),

                        Divider(
                          color: Theme.of(context).dividerColor,
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
                                    itemCount: 3,
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
                                    flex: 2,
                                    child: Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).dividerColor,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), topRight: Radius.circular(8))
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
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
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
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor == Colors.black  ? Color(0xffF5F9FF) : Color(0xff121923),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child:  Text('Drop Off', style: GoogleFonts.lexend(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).cardColor
                              )),
                            ),
                            Text('12-09-24 10:30 AM', style: GoogleFonts.lexend(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).primaryColor
                            )),
                          ],
                        ),

                        Divider(
                          color: Theme.of(context).dividerColor,
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
                                    itemCount: 3,
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
                                    flex: 2,
                                    child: Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).dividerColor,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(8), topRight: Radius.circular(8))
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
                        ),
                        Visibility(
                          visible: show,
                          child: Column(
                            children: [
                              Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                              Row(
                                children: [
                                  Text('12/09/24', style: GoogleFonts.lexend(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w200,
                                      color: Theme.of(context).primaryColor
                                  )),
                                  Text(' - ', style: GoogleFonts.lexend(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w200,
                                      color: Theme.of(context).primaryColor
                                  )),
                                  Text('12/12/24', style: GoogleFonts.lexend(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w200,
                                      color: Theme.of(context).primaryColor
                                  )),
                                  Spacer(),
                                  Text('30 Days', style: GoogleFonts.lexend(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w200,
                                      color: Theme.of(context).primaryColor
                                  )),
                                ],
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text('1.24',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Text('(per day price)',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text('x 30',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Text('(Total Days)',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                              SizedBox(height: 5.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text('\$ 32.4',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Text('(Per Item Price)',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text('x 30',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Text('(Total Items)',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Text('\$ 300',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Text('Total Amount',
                                        textAlign: TextAlign.end,
                                        style: GoogleFonts.lexend(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Theme.of(context).primaryColor
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Theme.of(context).dividerColor,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              show = !show;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                              color: Theme.of(context).dividerColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(show ? Icons.arrow_drop_up : Icons.arrow_drop_down, color: Theme.of(context).primaryColor,),
                                      Icon(Icons.calculate, color: Theme.of(context).primaryColor,),
                                    ],
                                  ),
                                  Text('\$300', style: GoogleFonts.lexend(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context).primaryColor
                                  )),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
