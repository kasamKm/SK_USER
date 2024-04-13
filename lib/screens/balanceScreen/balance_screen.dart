import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Theme.of(context).dividerColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).dividerColor,
        title: Text(
          'Balance',
          style:
          GoogleFonts.lexend(fontSize: 24.sp, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor),
        ),
        centerTitle: false,
        leadingWidth: 0.w,
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Container(

                      height: 50,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft:Radius.circular(8) ),
                          color:  Theme.of(context).cardColor.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('12/09/24 - 10:00 AM', style: GoogleFonts.lexend(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                              color: Theme.of(context).primaryColor
                          ),),
                          Text(
                            'SK120924013055',
                            style:
                            GoogleFonts.lexend(fontSize: 18.sp, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).focusColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))
                    ),
                    child: Text('\$500', style: GoogleFonts.lexend(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF7F74)
                    ),),
                  ),
                  SizedBox(width: 5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}