import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/utils/app_router.gr.dart';
@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 55.h,
                    backgroundColor: Theme.of(context).primaryColorDark,
                    child: CircleAvatar(
                      radius: 53.h,
                      backgroundColor: Theme.of(context).canvasColor,
                      child: Image.asset(ImageAssetPath.icPerson, fit: BoxFit.cover, height: 100,),
                    ),
                  ),
                  Positioned(
                  top: 80.h,
                    right: 0,
                    left: 80.h,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(
                        CupertinoIcons.camera_fill,
                        color: Colors.white,
                        size: 17,
                      )
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Kasim",
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
            SizedBox(
              height: 5.h,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).dividerColor
                  ),
                  child: Icon(CupertinoIcons.bell, color: Theme.of(context).primaryColor ,),
                ),
                SizedBox(width: 10.w,),
                Text(
                  "Notifications",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                      fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_right_rounded, size: 27, color: Theme.of(context).primaryColorDark,)
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).dividerColor
                  ),
                  child: Icon(CupertinoIcons.doc_text, color: Theme.of(context).primaryColor),
                ),
                SizedBox(width: 10.w,),
                Text(
                  "Terms & Conditions",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                      fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_right_rounded, size: 27, color: Theme.of(context).primaryColorDark,)
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).dividerColor
                  ),
                  child: Icon(CupertinoIcons.shield, color: Theme.of(context).primaryColor),
                ),
                SizedBox(width: 10.w,),
                Text(
                  "Privacy Policy",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                      fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_right_rounded, size: 27, color: Theme.of(context).primaryColorDark,)
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).dividerColor
                  ),
                  child: Icon(CupertinoIcons.phone, color: Theme.of(context).primaryColor),
                ),
                SizedBox(width: 10.w,),
                Text(
                  "Contact Us",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                      fontSize: 16.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_right_rounded, size: 27, color: Theme.of(context).primaryColorDark,)
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: (){
                AutoRouter.of(context).replaceAll([const SplashRoute()]);
              },
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).focusColor
                    ),
                    child: Icon(CupertinoIcons.square_arrow_left, color: Color(0xffFF7F74),),
                  ),
                  SizedBox(width: 10.w,),
                  Text(
                    "Log out",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexend(
                        fontSize: 16.sp, color: Color(0xffFF7F74), fontWeight: FontWeight.w300),
                  ),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
