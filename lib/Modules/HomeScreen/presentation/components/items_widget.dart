
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/core/extensions/empty_space.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';
import 'package:flutter_task/core/style/app_color.dart';

class ItemsWidgets extends StatelessWidget {
  String ?image;
  String ?title;
   ItemsWidgets({Key? key,this.title,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(image??"",color: AppColors.fiveColor,),
            8.sph,
            Text(title??"",textAlign: TextAlign.center,style: context.textTheme.headlineSmall?.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600
            ),)
          ],
        ),
      ),
    );

  }}
