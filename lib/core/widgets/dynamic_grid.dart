import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:glossy/glossy.dart';
import 'package:personal_portfolio/data/model/grid_model.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class DynamicGrid extends StatelessWidget {
  final List<GridModel> items;

  const DynamicGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    // Extract theme-based colors
    final brightness = Theme.of(context).brightness;
    final cardColor = brightness == Brightness.dark
        ? AppColors.cardBackground
        : AppColors.background;
    final textColor = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GlossyContainer(
          height: 100.h,
          width: 100.w,
          border: Border.all(style: BorderStyle.none),
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlowText(
                  item.experience.toString(),
                  glowColor: cardColor,
                  blurRadius: 30,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                  ),
                ),
                GlowText(
                  item.title,
                  glowColor: cardColor,
                  blurRadius: 10,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
