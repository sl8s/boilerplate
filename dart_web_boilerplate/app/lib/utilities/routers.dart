import 'package:dart_web_boilerplate/utilities/constants.dart';
import 'package:dart_web_boilerplate/views/example_view/example_view.dart';
import 'package:dart_web_boilerplate/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@immutable
final class Routers {
  static final GoRouter production = GoRouter(
    initialLocation: Constants.homeView,
    routes: [
      GoRoute(
        path: Constants.homeView,
        builder: (BuildContext context, GoRouterState state) => HomeView(),
      ),
      GoRoute(
        path: Constants.exampleView,
        builder: (BuildContext context, GoRouterState state) => ExampleView(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      return null;
    },
    errorBuilder: (BuildContext context, GoRouterState state) {
      return Container(
        color: Colors.red,
        child: Center(child: Text("404 Not found")),
      );
    },
  );

  const Routers._();

  static GoRouter getRouterForTests(Widget widget) {
    return GoRouter(
      initialLocation: "/",
      routes: [
        GoRoute(
          path: "/",
          builder: (BuildContext context, GoRouterState state) => widget,
        ),
      ],
      errorBuilder: (BuildContext context, GoRouterState state) => widget,
    );
  }
}
