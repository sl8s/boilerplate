import 'package:dart_desktop_dev/named_utility/keys_routers_utility.dart';
import 'package:dart_desktop_dev/named_vm/home_vm/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@immutable
final class GoRouterUtility {
  static final GoRouter defaultGoRouter = GoRouter(
      initialLocation: KeysRoutersUtility.homeVM,
      routes: [
        GoRoute(
            path: KeysRoutersUtility.homeVM,
            builder: (BuildContext context, GoRouterState state) => HomeVM()),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        return null;
      });

  const GoRouterUtility._();

  static GoRouter getGoRouterFromNamedTestMain(Widget namedTestMain) {
    return GoRouter(
        initialLocation: "/",
        routes: [
          GoRoute(
              path: "/",
              builder: (BuildContext context, GoRouterState state) => namedTestMain),
        ],
        errorBuilder: (BuildContext context, GoRouterState state) => namedTestMain);
  }
}