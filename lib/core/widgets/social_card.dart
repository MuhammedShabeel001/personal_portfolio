import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GlossyContainer(
      border: Border.all(style: BorderStyle.none),
      width: 100.w,
      height: 8.h,
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.cardBackground
          : AppColors.background,
      borderRadius: BorderRadius.circular(10), 
      
      // child: ,
    );
  }
}