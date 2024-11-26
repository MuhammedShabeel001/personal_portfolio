// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glossy/glossy.dart';
import 'package:sizer/sizer.dart';

import '../../core/constants/colors.dart';

// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  String icon;
   BottomButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GlossyContainer(
      border: Border.all(style: BorderStyle.none),
      width: 21.5.w,
      height: 8.h,
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.cardBackground
          : AppColors.background,
      borderRadius: BorderRadius.circular(10), 
      child: Center(
        child: SvgPicture.asset(icon,color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.cardBackground
              : AppColors.background,),
      ),
      
      // child: ,
    );
  }
}
