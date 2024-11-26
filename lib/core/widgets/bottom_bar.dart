import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:glossy/glossy.dart';
import 'package:personal_portfolio/core/constants/assets.dart';
import 'package:personal_portfolio/core/constants/colors.dart';
import 'package:personal_portfolio/core/constants/text.dart';
import 'package:personal_portfolio/core/constants/text_style.dart';
import 'package:sizer/sizer.dart';

import '../../view/widgets/bottom_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        GlossyContainer(
          border: Border.all(style: BorderStyle.none),
          width: 45.5.w,
          height: 8.h,
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.cardBackground
              : AppColors.background,
          borderRadius: BorderRadius.circular(10), 
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppText.download,style: AppTextStyle.download),
                const Gap(12),
                SvgPicture.asset(Assets.download, color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.cardBackground
          : AppColors.background,)
              ],
            ),
          ),
          // child: ,
        ),
        const Gap(12),
        BottomButton(icon: Assets.message,),
        const Gap(12), 
        BottomButton(icon: Assets.location,),
      ],
    );
  }
}


