import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_task/core/style/app_color.dart';

class AppStyle {
  static get LightTheme => ThemeData(
      iconTheme: IconThemeData(color: AppColors.primarycolor),
      hintColor: Color(0xffBBBBBB),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      scaffoldBackgroundColor: AppColors.scaffoldColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primarycolor,
        selectionColor: AppColors.primarycolor,
        selectionHandleColor: AppColors.primarycolor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            color: Color(0xffBBBBBB),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal),
      ),
      appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent),
          titleTextStyle: GoogleFonts.lato(
              color: AppColors.secondarycolor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: Colors.white, size: 20.sp)),
      primaryColor: AppColors.primarycolor,
      fontFamily: GoogleFonts.lato().fontFamily,
      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primarycolor),
        displayMedium: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.secondarycolor),
        displaySmall: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.thirdColor),
        headlineMedium: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.fourthColor),
        headlineSmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.fiveColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.sixColor,
        ),
        bodyLarge: TextStyle(
            color: AppColors.blackColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700),
        headlineLarge: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.greenColor,
        ),
        titleMedium:
            TextStyle(color: Colors.black), // default TextField input style
      ),
      cardColor: AppColors.cardbg,
      cardTheme: const CardTheme(margin: EdgeInsets.zero),
      bottomAppBarColor: Colors.white
      // buttonTheme: ButtonThemeData(buttonColor: Color(0xff2D6BCB)),
      );
}
