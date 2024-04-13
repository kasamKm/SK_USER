import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_app/constants/asset_path.dart';
import 'package:user_app/utils/app_router.gr.dart';
import 'package:user_app/utils/stream_builder.dart';

import '../../widgets/button.dart';
import '../../widgets/password_text_field.dart';
import '../../widgets/text_filed.dart';


@RoutePage()
class LoginScreen extends StatelessWidget {

  final TextEditingController phoneNo = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Didn't have an account?",
              textAlign: TextAlign.end,
              style: GoogleFonts.lexend(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).primaryColor
              ), ),
            TextButton(onPressed: (){
              AutoRouter.of(context).replace(const RegisterRoute());
            }, child: Text("Register",
              textAlign: TextAlign.end,
              style: GoogleFonts.lexend(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).cardColor
              ),))
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
                tag: 'S1',
                child: Image.asset(ImageAssetPath.noBackgroundAppLogo, height: 80.h, width: 80.w,)), // Replace with your logo
            SizedBox(height: 20.h),
            Hero(
              tag: 'L1',
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Welcome Back 👋\nTo ',
                      style: GoogleFonts.lexend(
                          fontSize: 28.sp,
                        color: Theme.of(context).primaryColor
                      ),),
                    TextSpan(text: 'SK Constuction ',  style: GoogleFonts.lexend(
                        fontSize: 28.sp,
                        color: Theme.of(context).cardColor
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text('Assalamu Alaikum, Login to continue',
              textAlign: TextAlign.start,
              style: GoogleFonts.lexend(
                fontSize: 16.sp,
                color: Theme.of(context).primaryColorDark
            ),),
            SizedBox(height: 30.h),
            TxFild(
              controller: phoneNo,
              hindText: 'Phone No.',
              type: TextInputType.phone,
            ),
            SizedBox(height: 15.h),
            StreamBuilder<bool>(
              stream: StreamUtil.passStreamController,
              builder: (context, snapshot) {
                return PasswordTextField(
                  controller: password,
                  isVisible: snapshot.data == null ? false : snapshot.data!,
                    onpress: () {
                      if (snapshot.data == true) {
                        StreamUtil.passStreamController.add(false);
                      } else {
                        StreamUtil.passStreamController.add(true);
                      }
                    }
                );
              }
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot Password ?',
                textAlign: TextAlign.end,
                style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w300,
                  fontSize: 16.sp,
                  color: Theme.of(context).cardColor
              ), ),
            ),
            SizedBox(height: 15.h),
            GradientButton(text: 'Login', onPressed: () {
AutoRouter.of(context).push(DashBoardRoute());
            },),SizedBox(height: 15.h),

          ],
        ),
      ),
    );
  }
}