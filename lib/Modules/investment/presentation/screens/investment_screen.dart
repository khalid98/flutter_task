import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Modules/investment/controller/investment_cubit.dart';
import 'package:flutter_task/Modules/investment/presentation/components/bonds_item.dart';
import 'package:flutter_task/core/components/AppBarComponent.dart';
import 'package:flutter_task/core/extensions/empty_space.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';
import 'package:flutter_task/core/style/app_color.dart';
import 'package:flutter_task/presentation/components/components.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
          title: "Fixed Income", automaticallyImplyLeading: true),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding:const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.sph,
                  Text(
                    "Fixed Income Portfolio",
                    style: context.textTheme.displayLarge?.copyWith(
                        fontSize: 22.sp, fontWeight: FontWeight.w700),
                  ),
                  8.sph,
                  Text(
                    "A fixed income portfolio consists of bonds and other securities providing steady income and relatively lower risk.",
                    style: context.textTheme.displayMedium?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.5.h),
                  ),
                  30.sph,
                  Center(
                    child: Text(
                      "Annual Yield To Maturity (YTM)",
                      style: context.textTheme.headlineSmall?.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w900),
                    ),
                  ),
                  10.sph,
                  Center(
                    child: Text(
                      "6.81%",
                      style: context.textTheme.displayLarge?.copyWith(
                          fontSize: 31.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  15.sph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Average Rating",
                            style: context.textTheme.displayMedium?.copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "AA",
                            style: context.textTheme.displayLarge?.copyWith(
                                fontSize: 22.sp, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Bonds",
                            style: context.textTheme.displayMedium?.copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "20 Companies",
                            style: context.textTheme.displayLarge?.copyWith(
                                fontSize: 22.sp, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  15.sph,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Term Types",
                        style: context.textTheme.displayMedium?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w600),
                      ),
                      15.sph,
                      Row(
                        children: [
                          ...List.generate(
                              3,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0, vertical: 5),
                                        child: Text(
                                          "3 Year Term",
                                          style: context.textTheme.headlineSmall
                                              ?.copyWith(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                    ],
                  ),
                  30.sph,
                  Text(
                    "Investment Calculator",
                    style: context.textTheme.displayLarge?.copyWith(
                        fontSize: 22.sp, fontWeight: FontWeight.w700),
                  ),
                  15.sph,
                  BlocConsumer<InvestmentCubit, InvestmentState>(
                    builder: (context, state) {
                      final InvestmentCubit investmentCubit =
                          BlocProvider.of<InvestmentCubit>(context);

                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 10),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Investment Amount",
                                  style: context.textTheme.headlineSmall
                                      ?.copyWith(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                ),
                              ),
                              10.sph,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      investmentCubit.decrementInvestment();
                                    },
                                    child: CircleAvatar(
                                        radius: 24.sp,
                                        backgroundColor:
                                            AppColors.scaffoldColor,
                                        child: Text(
                                          "-",
                                          style: context.textTheme.displayLarge
                                              ?.copyWith(
                                                  fontSize: 36.sp,
                                                  fontWeight: FontWeight.w600),
                                        )),
                                  ),
                                  Text(
                                    "\$${state.amount}",
                                    style: context.textTheme.displayLarge
                                        ?.copyWith(
                                            fontSize: 36.sp,
                                            fontWeight: FontWeight.w600),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      investmentCubit.incrementInvestment();
                                    },
                                    child: CircleAvatar(
                                        radius: 24.sp,
                                        backgroundColor:
                                            AppColors.scaffoldColor,
                                        child: Text(
                                          "+",
                                          style: context.textTheme.displayLarge
                                              ?.copyWith(
                                                  fontSize: 36.sp,
                                                  fontWeight: FontWeight.w600),
                                        )),
                                  ),
                                ],
                              ),
                              10.sph,
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.greenColor.withOpacity(0.10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 2),
                                  child: Text(
                                    "6.81% YTM",
                                    style: context.textTheme.headlineLarge
                                        ?.copyWith(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              10.sph,
                              Row(
                                children: [
                                  ...List.generate(
                                      investmentCubit.termsValue.length,
                                      (index) => InkWell(
                                            onTap: () {
                                              investmentCubit.setTermValue(
                                                  investmentCubit
                                                      .termsValue[index]);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    side: BorderSide(
                                                      color: investmentCubit
                                                                      .termsValue[
                                                                  index] ==
                                                              investmentCubit
                                                                  .terms
                                                          ? AppColors
                                                              .primarycolor
                                                          : Colors.transparent,
                                                    )),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 5),
                                                  child: Text(
                                                    "${investmentCubit.termsValue[index]} Year Term",
                                                    style: context
                                                        .textTheme.headlineSmall
                                                        ?.copyWith(
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ))
                                ],
                              ),
                              15.sph,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Capital At Maturity",
                                        style: context.textTheme.headlineSmall
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "\$${investmentCubit.calculateCapitalAtMaturity()}",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 22.sp,
                                                fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Total Interest",
                                        style: context.textTheme.headlineSmall
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "\$${investmentCubit.calculateTotalInterest()}",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 22.sp,
                                                fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              15.sph,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Annual Interest",
                                        style: context.textTheme.headlineSmall
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "\$${investmentCubit.calculateAnnualInterest()}",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 22.sp,
                                                fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Average Maturity Date",
                                        style: context.textTheme.headlineSmall
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        investmentCubit.calculateAverageMaturityDate(),
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 22.sp,
                                                fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    listener: (context, state) {},
                  ),
                  15.sph,
                  Text(
                    "Bonds",
                    style: context.textTheme.displayLarge?.copyWith(
                        fontSize: 22.sp, fontWeight: FontWeight.w700),
                  ),
                  15.sph,
                  ListView.separated(
                    shrinkWrap: true,
                    physics:const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                    itemBuilder: (context, index) => const BondsItem(),
                  ),
                  30.sph,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Custombutton(
                width: ScreenUtil().screenWidth,
                title: "Create Investment Account",
                color: AppColors.primarycolor,
                onpressed: () {}),
          )
        ],
      ),
    );
  }
}
