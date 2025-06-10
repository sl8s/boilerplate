import 'package:dart_web_dev/l10n/app_localizations.dart';
import 'package:dart_web_dev/named_utility/keys_breakpoints_utility.dart';
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
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
        ),
        darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0,end: 599, name: MOBILE),
            const Breakpoint(start: 600,end: 900, name: TABLET),
            const Breakpoint(start: 901, end: 1300, name: KeysBreakpointsUtility.largeTablet),
            const Breakpoint(start: 1301,end: 2047, name: DESKTOP),
            const Breakpoint(start: 2048,end: 2560, name: KeysBreakpointsUtility.largeDesktop),
            const Breakpoint(start: 2561,end: double.infinity, name: KeysBreakpointsUtility.tv),
          ],),
        routerConfig: goRouter);
  }
}