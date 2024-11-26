import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glossy/glossy.dart';
import 'package:personal_portfolio/core/constants/assets.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
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
      
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(Assets.flutter),
            SvgPicture.asset(Assets.dart),
            SvgPicture.asset(Assets.figma),
            SvgPicture.asset(Assets.firebase),
            SvgPicture.asset(Assets.git),
            SvgPicture.asset(Assets.illustrator),
          ],
        ),
      ),
    );
  }
}
