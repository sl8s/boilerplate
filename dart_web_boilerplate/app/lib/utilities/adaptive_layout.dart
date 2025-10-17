import 'package:dart_web_boilerplate/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

@immutable
final class AdaptiveLayout {
  const AdaptiveLayout._();

  static Widget getAdaptiveWidget(
    BuildContext context, {
    required Widget mobileWidget,
    Widget? tabletWidget,
    Widget? desktopWidget,
    Widget? largeDesktopWidget,
    Widget? tvWidget,
  }) {
    if (ResponsiveBreakpoints.of(context).isMobile) {
      return mobileWidget;
    }
    if (ResponsiveBreakpoints.of(context).isTablet) {
      return tabletWidget ?? mobileWidget;
    }
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return desktopWidget ?? mobileWidget;
    }
    if (ResponsiveBreakpoints.of(context).breakpoint.name ==
        Constants.largeDesktop) {
      return largeDesktopWidget ?? mobileWidget;
    }
    return tvWidget ?? mobileWidget;
  }

  static TextTheme getAdaptiveTextTheme(BuildContext context, Color color) {
    if (ResponsiveBreakpoints.of(context).isMobile) {
      return TextTheme(
        headlineMedium: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter",
          color: color,
        ),
        bodyLarge: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodySmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          fontFamily: "Inter",
          color: color,
        ),
      );
    }
    if (ResponsiveBreakpoints.of(context).isTablet) {
      return TextTheme(
        headlineMedium: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter",
          color: color,
        ),
        bodyLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodyMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodySmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          fontFamily: "Inter",
          color: color,
        ),
      );
    }
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return TextTheme(
        headlineMedium: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter",
          color: color,
        ),
        bodyLarge: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodyMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodySmall: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          fontFamily: "Inter",
          color: color,
        ),
      );
    }
    if (ResponsiveBreakpoints.of(context).breakpoint.name ==
        Constants.largeDesktop) {
      return TextTheme(
        headlineMedium: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w600,
          fontFamily: "Inter",
          color: color,
        ),
        bodyLarge: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodyMedium: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w500,
          fontFamily: "Inter",
          color: color,
        ),
        bodySmall: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w400,
          fontFamily: "Inter",
          color: color,
        ),
      );
    }
    return TextTheme(
      headlineMedium: TextStyle(
        fontSize: 44.0,
        fontWeight: FontWeight.w600,
        fontFamily: "Inter",
        color: color,
      ),
      bodyLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.w500,
        fontFamily: "Inter",
        color: color,
      ),
      bodyMedium: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w500,
        fontFamily: "Inter",
        color: color,
      ),
      bodySmall: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.w400,
        fontFamily: "Inter",
        color: color,
      ),
    );
  }
}
