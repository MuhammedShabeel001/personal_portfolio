import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/widgets/dynamic_grid.dart';
import 'package:personal_portfolio/data/model/grid_model.dart';
import 'package:sizer/sizer.dart';

class ExperienceGrid extends StatelessWidget {
  const ExperienceGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueGrey,
      // height: 43.5.h, 
      child: DynamicGrid(
        items: [
          GridModel(experience: 2.2, title: 'Flutter'),
          GridModel(experience: 2.2, title: 'Flutter'),
          GridModel(experience: 2.2, title: 'Flutter'),
          GridModel(experience: 2.2, title: 'Flutter'), 
        ],
      ),
    );
  }
}
