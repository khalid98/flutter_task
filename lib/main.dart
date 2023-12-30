import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/routes/app_routes.dart';
import 'package:flutter_task/core/style/app_theme.dart';
import 'package:flutter_task/presentation/cubit/app_layout_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppLayoutCubit()),
          ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppStyle.LightTheme,
              themeMode: ThemeMode.light,
              initialRoute: Routes.AppLayOut,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              home: child),
        );
      },
    );
  }
}
