import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/style/app_color.dart';

AppBar AppBarComponent(
    {String? title,
    Color? backgroundColor,
    List<Widget>? actions,
    bool? automaticallyImplyLeading}) {
  return AppBar(
    iconTheme: IconThemeData(color: AppColors.primarycolor),
    title: Text(title ?? ""),
    toolbarHeight: 60.h,
    elevation: 0,
    centerTitle: true,
    backgroundColor: AppColors.scaffoldColor,
    actions: actions ?? [],
    automaticallyImplyLeading: automaticallyImplyLeading ?? true,
  );
}
