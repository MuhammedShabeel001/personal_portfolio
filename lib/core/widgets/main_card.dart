import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/constants/colors.dart';
import 'package:personal_portfolio/core/constants/text.dart';
import 'package:personal_portfolio/core/constants/text_style.dart';
import 'package:sizer/sizer.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 75.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.background,
            AppColors.accent,
          ],
          stops: [0.8, 1.0],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: ClipRRect(),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: const TextStyle(fontFamily: 'SpaceGrotesk'),
                    children: [
                      TextSpan(
                        text: AppText.nameTitle,
                        style: AppTextStyle.nameTitle,
                      ),
                      TextSpan(
                        text: AppText.subTitle,
                        style: AppTextStyle.subTitle,
                      ),
                      TextSpan(
                        text: AppText.jobTitle,
                        style: AppTextStyle.jobTitle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
