import 'package:flutter/material.dart';
import 'package:personal_portfolio/view/pages/desktop/desktop_view.dart';
import 'package:personal_portfolio/view/pages/mobile/mobile_view.dart';
import 'package:personal_portfolio/view/pages/tablet/tablet_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {

        //desktop view
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const DesktopView();
        }

        //tablet view
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return const TabletView();
        }

        //mobile view
        return const MobileView();
      },
    );
  }
}
