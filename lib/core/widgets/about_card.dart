import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:personal_portfolio/core/constants/text.dart';
import 'package:personal_portfolio/core/constants/text_style.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GlossyContainer(
      border: Border.all(style: BorderStyle.none),
      width: 100.w,
      height: 25.h,
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.cardBackground
          : AppColors.background, 
      borderRadius: BorderRadius.circular(10),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Text(
            AppText.aboutSession,
            // textAlign: TextAlign.center,
            style: AppTextStyle.aboutSession,
          ),
        ),
      ),
    );
  }
}
