import 'package:dart_desktop_dev/l10n/app_localizations.dart';
import 'package:dart_desktop_dev/named_utility/keys_breakpoints_utility.dart';
import 'package:dart_desktop_dev/named_utility/window_manager_utility.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:window_manager/window_manager.dart';

final class App extends StatefulWidget {
  final GoRouter goRouter;

  const App({super.key,required this.goRouter});

  @override
  State<App> createState() => _AppState();
}

final class _AppState extends State<App>  with WindowListener {
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
        routerConfig: widget.goRouter);
  }

  @override
  void initState() {
    super.initState();
    WindowManagerUtility.addFromWindowListenerParameterWindowManager(this);
  }

  @override
  void dispose() {
    WindowManagerUtility.removeFromWindowListenerParameterWindowManager(this);
    super.dispose();
  }

  @override
  void onWindowClose() {
    WindowManagerUtility.hideParameterWindowManager();
  }
}