import 'package:dart_web_dev/app.dart';
import 'package:dart_web_dev/utilities/themes/base_theme.dart';
import 'package:dart_web_dev/utilities/flutter_theme.dart';
import 'package:dart_web_dev/utilities/routers.dart';
import 'package:dart_web_dev/utilities/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:smvp_dart/smvp.dart';

enum EnumExampleViewTest { isLoading, exception, success }

final class ExampleViewTest extends StatefulWidget {
  const ExampleViewTest({super.key});

  @override
  State<ExampleViewTest> createState() => _ExampleViewTestState();
}

final class _ExampleViewTestState extends State<ExampleViewTest> {
  // Final variables
  final _shareProxy = ShareProxy();

  // Not final variables
  bool _isLoading = true;
  // ignore: prefer_final_fields
  ExceptionAdapter _exceptionAdapter = ExceptionAdapter(null);

  @override
  Widget build(BuildContext context) {
    final theme = FlutterTheme.getTheme(context);
    final adaptiveTextTheme = AdaptiveLayout.getAdaptiveTextTheme(
      context,
      theme.text,
    );
    switch (getViewState()) {
      case EnumExampleViewTest.isLoading:
        return AdaptiveLayout.getAdaptiveWidget(
          context,
          mobileWidget: _buildMobileWhereVSIsLoading(
            context,
            theme,
            adaptiveTextTheme,
          ),
          tabletWidget: _buildTabletWhereVSIsLoading(
            context,
            theme,
            adaptiveTextTheme,
          ),
          desktopWidget: _buildDesktopWhereVSIsLoading(
            context,
            theme,
            adaptiveTextTheme,
          ),
          largeDesktopWidget: _buildLargeDesktopWhereVSIsLoading(
            context,
            theme,
            adaptiveTextTheme,
          ),
          tvWidget: _buildTVWhereVSIsLoading(context, theme, adaptiveTextTheme),
        );
      case EnumExampleViewTest.exception:
        return AdaptiveLayout.getAdaptiveWidget(
          context,
          mobileWidget: _buildMobileWhereVSException(
            context,
            theme,
            adaptiveTextTheme,
          ),
          tabletWidget: _buildTabletWhereVSException(
            context,
            theme,
            adaptiveTextTheme,
          ),
          desktopWidget: _buildDesktopWhereVSException(
            context,
            theme,
            adaptiveTextTheme,
          ),
          largeDesktopWidget: _buildLargeDesktopWhereVSException(
            context,
            theme,
            adaptiveTextTheme,
          ),
          tvWidget: _buildTVWhereVSException(context, theme, adaptiveTextTheme),
        );
      case EnumExampleViewTest.success:
        return AdaptiveLayout.getAdaptiveWidget(
          context,
          mobileWidget: _buildMobileWhereVSSuccess(
            context,
            theme,
            adaptiveTextTheme,
          ),
          tabletWidget: _buildTabletWhereVSSuccess(
            context,
            theme,
            adaptiveTextTheme,
          ),
          desktopWidget: _buildDesktopWhereVSSuccess(
            context,
            theme,
            adaptiveTextTheme,
          ),
          largeDesktopWidget: _buildLargeDesktopWhereVSSuccess(
            context,
            theme,
            adaptiveTextTheme,
          ),
          tvWidget: _buildTVWhereVSSuccess(context, theme, adaptiveTextTheme),
        );
    }
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _shareProxy.deleteListenersByListenerId([]);
    super.dispose();
  }

  EnumExampleViewTest getViewState() {
    if (_isLoading) {
      return EnumExampleViewTest.isLoading;
    }
    if (_exceptionAdapter.hasException()) {
      return EnumExampleViewTest.exception;
    }
    return EnumExampleViewTest.success;
  }

  Widget _buildMobileWhereVSIsLoading(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: CircularProgressIndicator(color: theme.text)),
    );
  }

  Widget _buildTabletWhereVSIsLoading(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: CircularProgressIndicator(color: theme.text)),
    );
  }

  Widget _buildDesktopWhereVSIsLoading(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: CircularProgressIndicator(color: theme.text)),
    );
  }

  Widget _buildLargeDesktopWhereVSIsLoading(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: CircularProgressIndicator(color: theme.text)),
    );
  }

  Widget _buildTVWhereVSIsLoading(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: CircularProgressIndicator(color: theme.text)),
    );
  }

  Widget _buildMobileWhereVSException(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(
        child: Text(
          "Exception: ${_exceptionAdapter.getKey()}",
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildTabletWhereVSException(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(
        child: Text(
          "Exception: ${_exceptionAdapter.getKey()}",
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildDesktopWhereVSException(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(
        child: Text(
          "Exception: ${_exceptionAdapter.getKey()}",
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildLargeDesktopWhereVSException(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(
        child: Text(
          "Exception: ${_exceptionAdapter.getKey()}",
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildTVWhereVSException(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(
        child: Text(
          "Exception: ${_exceptionAdapter.getKey()}",
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildMobileWhereVSSuccess(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: Text("MobileWidget", style: textTheme.bodyMedium)),
    );
  }

  Widget _buildTabletWhereVSSuccess(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: Text("TabletWidget", style: textTheme.bodyMedium)),
    );
  }

  Widget _buildDesktopWhereVSSuccess(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: Text("DesktopWidget", style: textTheme.bodyMedium)),
    );
  }

  Widget _buildLargeDesktopWhereVSSuccess(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(
        child: Text("LargeDesktopWidget", style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildTVWhereVSSuccess(
    BuildContext context,
    BaseTheme theme,
    TextTheme textTheme,
  ) {
    return Scaffold(
      backgroundColor: theme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: theme.backgroundPrimary,
        title: Text("Flutter App", style: textTheme.headlineMedium),
      ),
      body: Center(child: Text("TVWidget", style: textTheme.bodyMedium)),
    );
  }

  Future<void> _init() async {
    await _firstRequest();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  Future<void> _firstRequest() async {
    _isLoading = false;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(goRouter: Routers.getRouterForTests(ExampleViewTest())));
}
