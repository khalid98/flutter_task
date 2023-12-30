import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Modules/HomeScreen/presentation/screens/home_screen.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';
import 'package:flutter_task/core/routes/app_routes.dart';
import 'package:flutter_task/core/style/app_color.dart';
import 'package:flutter_task/presentation/components/bottomNavigationcomponent.dart';
import 'package:flutter_task/presentation/cubit/app_layout_cubit.dart';

class AppLayOut extends StatefulWidget {
  const AppLayOut({Key? key}) : super(key: key);

  @override
  State<AppLayOut> createState() => _AppLayOutState();
}

class _AppLayOutState extends State<AppLayOut> {
  static final List<Widget> _pages = [
    HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.black,
    ),
  ];
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final state = BlocProvider.of<AppLayoutCubit>(context, listen: true);
    return WillPopScope(
      onWillPop: () async {
        if (state.page == 0) return true;
        _pageController.jumpTo(0);
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
              ),
            ],
          ),
          child: BottomAppBar(
            clipBehavior: Clip.antiAlias,
            notchMargin: 0,
            elevation: 0,
            child: Container(
              height: 80.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: bottomNavigationcomponent(
                    ontap: () {
                      _pageController.jumpToPage(0);
                    },
                    SvgPath: "assets/images/home.svg",
                    title: "Home",
                    titleTextStyle: (state.page == 0)
                        ? context.textTheme.displayLarge?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)
                        : context.textTheme.headlineMedium?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                  )),
                  Expanded(
                      child: bottomNavigationcomponent(
                    ontap: () {
                      Navigator.pushNamed(context, Routes.InvestmentScreen);
                    },
                    title: "Investment",
                    titleTextStyle: (state.page == 1)
                        ? context.textTheme.displayLarge?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)
                        : context.textTheme.headlineMedium?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                    SvgPath: "assets/images/investment.svg",
                  )),
                  Expanded(
                      child: bottomNavigationcomponent(
                    ontap: () {},
                    title: "Chat",
                    titleTextStyle: (state.page == 2)
                        ? context.textTheme.displayLarge?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)
                        : context.textTheme.headlineMedium?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                    SvgPath: "assets/images/message.svg",
                  )),
                ],
              ),
            ),
          ),
        ),
        body: PageView(
          controller: _pageController,
          children: _pages,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            state.changeselectedpage(value);
          },
        ),
      ),
    );
  }
}
