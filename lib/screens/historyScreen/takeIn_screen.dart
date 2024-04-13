import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/utils/app_router.gr.dart';

import '../../constants/asset_path.dart';

class TakeInHistoryScreen extends StatefulWidget {
  const TakeInHistoryScreen({super.key});

  @override
  State<TakeInHistoryScreen> createState() => _TakeInHistoryScreenState();
}

class _TakeInHistoryScreenState extends State<TakeInHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
      return  InkWell(
        onTap: (){
          AutoRouter.of(context).push(const TakingDetailsRoute());
        },
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
                  Text('12/09/24 - 10:00 AM', style: GoogleFonts.lexend(
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
                          itemCount: 8,
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
      );
    }, separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.h,);
    },);
  }
}
