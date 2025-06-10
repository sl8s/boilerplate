import 'package:dart_mobile_dev/app.dart';
import 'package:dart_mobile_dev/named_utility/go_router_utility.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(goRouter: GoRouterUtility.defaultGoRouter));
}
