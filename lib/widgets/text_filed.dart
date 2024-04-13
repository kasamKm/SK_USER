import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class TxFild extends StatefulWidget {
  final String? hindText;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final TextEditingController? controller;
  final TextInputType? type;
  final bool? isRead;

  const TxFild(
      {super.key, required this.type, required this.controller, this.hindText, this.isRead = false, this.prefixIcon, this.sufixIcon});

  @override
  State<TxFild> createState() => _TxFildState();
}

class _TxFildState extends State<TxFild> {
  FocusNode node = FocusNode();

  @override
  void initState() {
    node.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Theme.of(context).cardColor,
        controller: widget.controller,
        focusNode: node,
        readOnly: widget.isRead!,
        keyboardType: widget.type,
        style: GoogleFonts.lexend(fontSize: 14.sp, color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.w),
          fillColor: Theme.of(context).dividerColor,
          hoverColor:Theme.of(context).dividerColor,
          focusColor: Theme.of(context).dividerColor,
          filled: true,
          labelText: '${widget.hindText}',
          labelStyle: GoogleFonts.lexend(fontSize: 14.sp, color: Theme.of(context).cardColor, fontWeight: FontWeight.normal),
          prefixIcon: widget.prefixIcon == null
              ? null
              : Icon(
            widget.prefixIcon!,
            color: node.hasFocus ? Colors.black : Colors.grey,
          ),
          suffixIcon: widget.sufixIcon == null
              ? null
              : Icon(
            widget.sufixIcon!,
            color: node.hasFocus ? Colors.black : Colors.grey,
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(width: 1, color:Theme.of(context).cardColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(width: 1, color:Theme.of(context).cardColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ));
  }
}
