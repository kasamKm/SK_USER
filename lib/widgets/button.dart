import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: 56.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).cardColor,
              Theme.of(context).cardColor,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade800.withOpacity(0.3),
              offset: Offset(2, 4),
              blurRadius: 5,
            ),
          ],
        ),
        child: Center(
          child: Text(text, style: GoogleFonts.lexend(
              fontSize: 15.sp,
              color: Theme.of(context).disabledColor
          ),),
        ),
      ),
    );
  }
}