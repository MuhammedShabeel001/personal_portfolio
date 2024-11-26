import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../core/widgets/about_card.dart';
import '../../../core/widgets/experience_grid.dart';
import '../../../core/widgets/skill_card.dart';
import '../../../core/widgets/social_card.dart';
import '../../../core/widgets/top_bar.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: AnimationList(
          animationDirection: AnimationDirection.vertical,
          duration: 5000,  
          reBounceDepth: 1.0, 
          children: [
            const Gap(12), 
            const TopBar(),
            // const Gap(12),
            // const MainCard(),
            // const Gap(12),
            // const AboutCard(),
            // const Gap(12),
            // const SkillCard(),
            const Gap(12),
            const SocialCard(),
            const Gap(12),
            const ExperienceGrid(),
            const Gap(12),
            Container(color: Colors.orange,height: 8.h,),
            const Gap(12),
 
          ],
        ),
      ),
    );
  }
}





