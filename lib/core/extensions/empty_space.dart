import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension EmptySpace on num {
  SizedBox get sph => SizedBox(height: this.h);
  SizedBox get spw => SizedBox(width: this.w);
}