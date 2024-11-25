
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/constants/routes.dart';

import '../../view/pages/home_page.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return CupertinoPageRoute(
          builder: (_) => const HomePage(),
        );
      // case AppRoutes.notification:
      //   return CupertinoPageRoute(builder: (_) => const NotificationPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
