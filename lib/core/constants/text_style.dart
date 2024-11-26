import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/constants/colors.dart';
import 'package:sizer/sizer.dart';

class AppTextStyle {

  static TextStyle nameTitle = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: AppColors.textColor);
  static TextStyle subTitle = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: AppColors.subTextColor);
  static TextStyle jobTitle = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: AppColors.accentTextColor);
  static TextStyle aboutSession = TextStyle(fontSize: 17.sp);
  static TextStyle download = const TextStyle(fontWeight: FontWeight.w700);
}