import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/Modules/HomeScreen/data/models/slider_model.dart';
import 'package:flutter_task/core/extensions/empty_space.dart';
import 'package:flutter_task/core/extensions/theme_extension.dart';
import 'package:flutter_task/core/style/app_color.dart';
import 'package:flutter_task/presentation/components/components.dart';

class SliderWidgets extends StatefulWidget {


  SliderWidgets({Key? key}) : super(key: key);

  @override
  State<SliderWidgets> createState() => _SliderWidgetsState();
}

class _SliderWidgetsState extends State<SliderWidgets> {
  int _current = 0;
  List<SliderModel?> imgList = [
    SliderModel(title: "Standard",image: "assets/images/image1.png"),
    SliderModel(title: "Plus",image: "assets/images/image2.png"),
    SliderModel(title: "Max",image: "assets/images/image3.png"),
    SliderModel(title: "Unlimited",image: "assets/images/image3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: ScreenUtil().screenWidth,
        height: 140.h,
        child: CarouselSlider(
          items:imgList.map((e) =>  Card(
            elevation: 0.5,
            child: Padding(
                padding:  EdgeInsets.only(left: 15.0.w,right: 15.0.w,top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "bünd",
                          style: context.textTheme.displayLarge?.copyWith(
                              fontSize: 23.sp, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "${e?.title}",
                          style: context.textTheme.headlineMedium?.copyWith(
                              fontSize: 23.sp, fontWeight: FontWeight.w700),
                        ),
                        15.sph,
                        Custombutton(
                          height: 35.h,
                            onpressed: () {},
                            color: AppColors.primarycolor.withOpacity(0.05),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/images/arrow.svg",height: 12.h,width: 12.w,),
                                8.spw,
                                Text("Start Now",style: context.textTheme.displayLarge?.copyWith(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500
                                ),),
                              ],
                            )),
                      ],
                    ),
                    Image.asset(e?.image??"")
                  ],
                )),
          )).toList(),
          options: CarouselOptions(
            padEnds: false,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeIn,
            initialPage: 0,
            autoPlay: true,
            onPageChanged: (index, r) {
              setState(() {
                _current = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      10.sph,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map(
          (image) {
            //these two lines
            int index = imgList.indexOf(image); //are changed
            return Container(
              width: 8.0.w,
              height: 8.0.h,
              margin:const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? AppColors.primarycolor
                      : AppColors.dotdisablecolor),
            );
          },
        ).toList(),
      ),
    ]);
  }
}
