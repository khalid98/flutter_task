
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/core/extensions/empty_space.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class bottomNavigationcomponent extends StatelessWidget {
  VoidCallback ?ontap;
  String SvgPath;
  String?title;
  Color ?SvgColor;
  TextStyle ? titleTextStyle;
  bottomNavigationcomponent({this.ontap,required this.SvgPath, this.SvgColor,this.title,this.titleTextStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      highlightColor: Colors.transparent,

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            SvgPath,
            color:SvgColor,
            height: 25.h,
            width: 25.w,
          ),
          5.sph,
          Text(title??"",style:titleTextStyle)
        ],
      ),
    );
  }
}
