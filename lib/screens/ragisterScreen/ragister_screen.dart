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
class RegisterScreen extends StatefulWidget {

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController name = TextEditingController();

  final TextEditingController phoneNo = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController conformP = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?",
              textAlign: TextAlign.end,
              style: GoogleFonts.lexend(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).primaryColor
              ), ),
            TextButton(onPressed: (){
              AutoRouter.of(context).replace(const LoginRoute());
            }, child: Text("Login",
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40.h),
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
                      TextSpan(text: 'Register Account\nTo ',
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
              Text('Assalamu Alaikum, register to continue',
                textAlign: TextAlign.start,
                style: GoogleFonts.lexend(
                    fontSize: 16.sp,
                    color: Theme.of(context).primaryColorDark
                ),),
              SizedBox(height: 30.h),
              TxFild(
                controller: name,
                hindText: 'Name.',
                type: TextInputType.phone,
              ),
              SizedBox(height: 15.h),
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
              StreamBuilder<bool>(
                  stream: StreamUtil.passStreamConformController,
                  builder: (context, snapshot) {
                    return PasswordTextField(
                        controller: conformP,
                        isVisible: snapshot.data == null ? false : snapshot.data!,
                        onpress: () {
                          if (snapshot.data == true) {
                            StreamUtil.passStreamConformController.add(false);
                          } else {
                            StreamUtil.passStreamConformController.add(true);
                          }
                        }
                    );
                  }
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) => setState(() => _isChecked = value!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0), // Adjust as needed
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w100,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'I agree to the ',
                          style: GoogleFonts.lexend(
                              fontSize: 14.sp,
                              color: Theme.of(context).primaryColor
                          ),),
                        TextSpan(text: 'Terms & Conditions\n& Privacy Policy',  style: GoogleFonts.lexend(
                            fontSize: 14.sp,
                            color: Theme.of(context).cardColor
                        ),),
                        TextSpan(text: ' set out by this app',
                          style: GoogleFonts.lexend(
                              fontSize: 14.sp,
                              color: Theme.of(context).primaryColor
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              GradientButton(text: 'Register', onPressed: () {  },),SizedBox(height: 15.h),

            ],
          ),
        ),
      ),
    );
  }
}