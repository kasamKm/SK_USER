import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';




class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function()? onpress;
  final bool? isVisible;
  PasswordTextField({
    required this.controller,
    this.isVisible,
    this.onpress,
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool isEditing = false;
  bool obscureText = true;
  bool isStrongPassword = false;
  String _passwordStrengthDescription = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      //obscureText: snapshot.data != null ? snapshot.data! : false,
      obscureText: widget.isVisible == null || !widget.isVisible! ? true : false,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      maxLength: 24,

      style: GoogleFonts.lexend(fontSize: 14.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        counterText: '',
        contentPadding: EdgeInsets.all(16.w),
        fillColor: Theme.of(context).dividerColor,
        hoverColor:Theme.of(context).dividerColor,
        focusColor: Theme.of(context).dividerColor,
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(
            widget.isVisible == null || !widget.isVisible! == false
                ? widget.isVisible!
                ? Icons.visibility_off
                : Icons.visibility
                : Icons.visibility,
            color: Theme.of(context).cardColor,
          ),
          onPressed: () {
            widget.onpress!();
          },
        ),
        labelText: 'Password.',
        labelStyle: GoogleFonts.lexend(fontSize: 14.sp, color: Theme.of(context).cardColor, fontWeight: FontWeight.normal),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(width: 1, color:Theme.of(context).cardColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(width: 1, color:Theme.of(context).cardColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      )
    );
  }
}