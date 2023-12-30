import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/Modules/HomeScreen/presentation/components/SliderWidgets.dart';
import 'package:flutter_task/Modules/HomeScreen/presentation/components/items_widget.dart';
import 'package:flutter_task/core/extensions/empty_space.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/user.png",
                    height: 24.h,
                    width: 24.w,
                    fit: BoxFit.cover,
                  ),
                ),
                12.spw,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: context.textTheme.displayMedium?.copyWith(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Mehemet Taser",
                        style: context.textTheme.displaySmall?.copyWith(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ClipOval(
                  child: SvgPicture.asset(
                    "assets/images/notification.svg",
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ],
            ),
            15.sph,
            SliderWidgets(),
            15.sph,
            Text("Conditions",style:context.textTheme.displayMedium?.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600
            ),),
            15.sph,
            Row(children: [
              Expanded(child: ItemsWidgets(title: "No Minimum Deposit",image: "assets/images/deposite.svg",)),
              10.spw,
              Expanded(child: ItemsWidgets(title: "\$15/Month (Paid Annually)",image: "assets/images/bank.svg",))
            ]),
            15.sph,
            Text("What You Get",style:context.textTheme.displayMedium?.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600
            ),),
            15.sph,
            Row(children: [
              Expanded(child: ItemsWidgets(title: "Swiss Bank Account",image: "assets/images/bank.svg",)),
              10.spw,
              Expanded(child: ItemsWidgets(title: "Mastercard Prepaid",image: "assets/images/mastercard.svg",)),
              10.spw,
              Expanded(child: ItemsWidgets(title: "Account Open Same Day",image: "assets/images/accountopen.svg",))
            ]),
            15.sph,
            Row(children: [
              Expanded(child: ItemsWidgets(title: "Protected up to \$100,000",image: "assets/images/protected.svg",)),
              10.spw,
              Expanded(child: ItemsWidgets(title: "Investments Portfolios",image: "assets/images/seedling.svg",)),
              10.spw,
              Expanded(child: ItemsWidgets(title: "Deposits Options",image: "assets/images/vault.svg",))
            ]),
          ],
        ),
      ),
    );
  }
}
