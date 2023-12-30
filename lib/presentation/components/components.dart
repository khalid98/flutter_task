import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/style/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
Widget Custombutton(
    {double? height,
      double? width,
      required VoidCallback onpressed,
      Color? color,
      BorderRadius? borderRadius,
      Color? bordercolor,
      TextStyle? textStyle,
      Widget? child,
      String? title}) {
  return Container(
    height: height?.h,
    width: width,
    decoration: BoxDecoration(
        color: color,
        border:
        Border.all(color: bordercolor ?? Colors.transparent, width: 1.0),
        borderRadius: borderRadius ?? BorderRadius.all(Radius.circular(5.0))),
    child: MaterialButton(
        onPressed: onpressed,
        elevation: 0,
        child: child ??
            Text(
              title ?? "",
              style: textStyle ??
                  GoogleFonts.lato(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
            ),
        shape: RoundedRectangleBorder(
            borderRadius:
            borderRadius ?? BorderRadius.all(Radius.circular(5.0)))),
  );
}
