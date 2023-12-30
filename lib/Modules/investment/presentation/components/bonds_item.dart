import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/extensions/empty_space.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';
import 'package:flutter_task/core/style/app_color.dart';

class BondsItem extends StatelessWidget {
  const BondsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30.sp,
                backgroundColor: AppColors.scaffoldColor,
                child: Image.asset("assets/images/bounds1.png",)),
            15.spw,
            Column(
              children: [
                Text(
                  "Netflix INC",
                  style: context.textTheme.bodyLarge,
                ),
                Text(
                  "BBB",
                  style: context.textTheme.bodyMedium,
                )
              ],
            ),
            Spacer(),
            Text(
              "5.37% APY",
              style: context.textTheme.headlineLarge
                  ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
