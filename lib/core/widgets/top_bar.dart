import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:glossy/glossy.dart';
import 'package:personal_portfolio/core/constants/assets.dart';
import 'package:personal_portfolio/core/constants/colors.dart';
import 'package:personal_portfolio/viewmodels/providers/theme_provider.dart';
import 'package:sizer/sizer.dart';

class TopBar extends ConsumerWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);
    
    return GlossyContainer(
      border: Border.all(width: 0, style: BorderStyle.none),
      width: 100.w,
      color: Theme.of(context).brightness == Brightness.dark ? AppColors.cardBackground : AppColors.background, 
      height: 7.h,
      borderRadius: BorderRadius.circular(10),
      // child: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     children: [
      //       const Gap(10),
      //       SizedBox(width: 30,child: SvgPicture.asset(Theme.of(context).brightness == Brightness.dark ? Assets.logoDark : Assets.logoLight),), 
      //       const Spacer(),
      //       SizedBox(width: 60,child: 
            
      //       InkWell(
      //         onTap: () {
      //           // Toggle the theme using ThemeNotifier
      //           themeNotifier.toggleTheme();
      //         },
      //         child: SizedBox(
      //           width: 60,
      //           child: SvgPicture.asset(
      //             themeMode == ThemeMode.dark
      //                 ? Assets.lightMode // Icon for light mode
      //                 : Assets.darkMode, // Icon for dark mode
      //           ),
      //         ),),)
      //     ],
      //   ),
      // ),
    );
  }
}
