

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Modules/investment/controller/investment_cubit.dart';
import 'package:flutter_task/Modules/investment/presentation/screens/investment_screen.dart';
import 'package:flutter_task/presentation/layout/app_layout.dart';

class Routes {
  static const String AppLayOut = '/AppLayOut';
  static const String InvestmentScreen = '/InvestmentScreen';



}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.AppLayOut:
        return MaterialPageRoute(builder: (context) {
          return AppLayOut();
        });
        case Routes.InvestmentScreen:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
              create: (context) => InvestmentCubit(),
              child: InvestmentScreen());
        });

    }
  }

}
