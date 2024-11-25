import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/core/constants/route_manager.dart';
import 'package:personal_portfolio/core/constants/routes.dart';
import 'package:personal_portfolio/viewmodels/providers/theme_provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);

    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Pesonal Portfolio',
          theme: ThemeData(
              brightness: Brightness.light, fontFamily: 'SpaceGrotesk'),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.home,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
