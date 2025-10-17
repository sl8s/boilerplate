import 'package:dart_web_boilerplate/l10n/app_localizations.dart';
import 'package:dart_web_boilerplate/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class App extends StatelessWidget {
  final GoRouter goRouter;

  const App({super.key, required this.goRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: "",
      themeMode: ThemeMode.dark,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          // Web-oriented standard ranges (simplified): Mobile, Tablet, Desktop, LargeDesktop, TV
          const Breakpoint(start: 0, end: 599, name: MOBILE), // phones
          const Breakpoint(
            start: 600,
            end: 1023,
            name: TABLET,
          ), // tablets / large phones landscape
          const Breakpoint(
            start: 1024,
            end: 1919,
            name: DESKTOP,
          ), // laptops/desktops (HD/HD+)
          Breakpoint(
            start: 1920,
            end: 2559,
            name: Constants.largeDesktop,
          ), // Full HD / WQHD
          Breakpoint(
            start: 2560,
            end: double.infinity,
            name: Constants.tv,
          ), // 2K+/4K TVs and ultra-wide
        ],
      ),
      routerConfig: goRouter,
    );
  }
}
