import 'package:dart_common_dev/named_utility/ready_data_utility.dart';
import 'package:dart_desktop_dev/app.dart';
import 'package:dart_desktop_dev/named_theme/base_named_theme.dart';
import 'package:dart_desktop_dev/named_utility/flutter_theme_utility.dart';
import 'package:dart_desktop_dev/named_utility/go_router_utility.dart';
import 'package:dart_desktop_dev/named_utility/platform_utility.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;

enum EnumDataForExampleVMTestMain {
  isLoading,
  exception,
  success
}

final class DataForExampleVMTestMain extends lamm.BaseDataForNamed<EnumDataForExampleVMTestMain> {
  DataForExampleVMTestMain(super.isLoading);

  @override
  EnumDataForExampleVMTestMain get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForExampleVMTestMain.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForExampleVMTestMain.exception;
    }
    return EnumDataForExampleVMTestMain.success;
  }

  @override
  String toString() {
    return "DataForExampleVMTestMain(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}

final class ExampleVMTestMain extends StatefulWidget {
  const ExampleVMTestMain({super.key});

  @override
  State<ExampleVMTestMain> createState() => _ExampleVMTestMainState();
}

final class _ExampleVMTestMainState extends State<ExampleVMTestMain> {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForExampleVMTestMain> _namedStreamWState;

  @override
  Widget build(BuildContext context) {
    final namedThemeFromContext = FlutterThemeUtility.getNamedThemeFromContext(context);
    final textThemeFromContextAndColor = PlatformUtility.getTextThemeFromContextAndColor(context, namedThemeFromContext.text);
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch(dataWNamed.getEnumDataForNamed) {
      case EnumDataForExampleVMTestMain.isLoading:
        return PlatformUtility.getNamedWidgetFromSeven(
            context,
            mobileWidget: _buildMobileWidgetWIsLoading(
                context,
                namedThemeFromContext,
                textThemeFromContextAndColor),
            tabletWidget: _buildTabletWidgetWIsLoading(
                context,
                namedThemeFromContext,
                textThemeFromContextAndColor),
            largeTabletWidget: _buildLargeTabletWidgetWIsLoading(
                context,
                namedThemeFromContext,
                textThemeFromContextAndColor),
            desktopWidget: _buildDesktopWidgetWIsLoading(
                context,
                namedThemeFromContext,
                textThemeFromContextAndColor),
            largeDesktopWidget: _buildLargeDesktopWidgetWIsLoading(
                context,
                namedThemeFromContext,
                textThemeFromContextAndColor),
            tvWidget: _buildTVWidgetWIsLoading(
                context,
                namedThemeFromContext,
                textThemeFromContextAndColor)
        );
      case EnumDataForExampleVMTestMain.exception:
        return PlatformUtility.getNamedWidgetFromSeven(
          context,
          mobileWidget: _buildMobileWidgetWException(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          tabletWidget: _buildTabletWidgetWException(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          largeTabletWidget: _buildLargeTabletWidgetWException(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          desktopWidget: _buildDesktopWidgetWException(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          largeDesktopWidget: _buildLargeDesktopWidgetWException(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          tvWidget: _buildTVWidgetWException(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
        );
      case EnumDataForExampleVMTestMain.success:
        return PlatformUtility.getNamedWidgetFromSeven(
          context,
          mobileWidget: _buildMobileWidgetWSuccess(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          tabletWidget: _buildTabletWidgetWSuccess(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          largeTabletWidget: _buildLargeTabletWidgetWSuccess(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          desktopWidget: _buildDesktopWidgetWSuccess(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          largeDesktopWidget: _buildLargeDesktopWidgetWSuccess(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
          tvWidget: _buildTVWidgetWSuccess(
              context,
              namedThemeFromContext,
              textThemeFromContextAndColor,
              dataWNamed),
        );
    }
  }

  Widget _buildMobileWidgetWIsLoading(BuildContext context, BaseNamedTheme namedTheme, TextTheme textTheme) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
            color: namedTheme.text),
      ),
    );
  }

  Widget _buildTabletWidgetWIsLoading(BuildContext context, BaseNamedTheme namedTheme, TextTheme textTheme) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
            color: namedTheme.text),
      ),
    );
  }

  Widget _buildLargeTabletWidgetWIsLoading(BuildContext context, BaseNamedTheme namedTheme, TextTheme textTheme) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
            color: namedTheme.text),
      ),
    );
  }

  Widget _buildDesktopWidgetWIsLoading(BuildContext context, BaseNamedTheme namedTheme, TextTheme textTheme) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
            color: namedTheme.text),
      ),
    );
  }

  Widget _buildLargeDesktopWidgetWIsLoading(BuildContext context, BaseNamedTheme namedTheme, TextTheme textTheme) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
            color: namedTheme.text),
      ),
    );
  }

  Widget _buildTVWidgetWIsLoading(BuildContext context, BaseNamedTheme namedTheme, TextTheme textTheme) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: CircularProgressIndicator(
            color: namedTheme.text),
      ),
    );
  }

  Widget _buildMobileWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "Exception: ${dataWNamed.exceptionController.getKeyParameterException}",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildTabletWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "Exception: ${dataWNamed.exceptionController.getKeyParameterException}",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildLargeTabletWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "Exception: ${dataWNamed.exceptionController.getKeyParameterException}",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildDesktopWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "Exception: ${dataWNamed.exceptionController.getKeyParameterException}",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildLargeDesktopWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "Exception: ${dataWNamed.exceptionController.getKeyParameterException}",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildTVWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "Exception: ${dataWNamed.exceptionController.getKeyParameterException}",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildMobileWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "MobileWidget",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildTabletWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "TabletWidget",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildLargeTabletWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "LargeTabletWidget",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildDesktopWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "DesktopWidget",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildLargeDesktopWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "LargeDesktopWidget",
            style: textTheme.bodyMedium),
      ),
    );
  }

  Widget _buildTVWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVMTestMain dataWNamed) {
    return Scaffold(
      backgroundColor: namedTheme.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: namedTheme.backgroundPrimary,
        title: Text(
            "Flutter App",
            style: textTheme.headlineMedium
        ),
      ),
      body: Center(
        child: Text(
            "TVWidget",
            style: textTheme.bodyMedium),
      ),
    );
  }

  @override
  void initState() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForExampleVMTestMain(true));
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _tempCacheProvider.dispose([]);
    _namedStreamWState.dispose();
    super.dispose();
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      setState(() {});
    });
    final firstRequest = await _firstRequest();
    lamm.debugPrint("ExampleVMTestMain: $firstRequest");
    if(!mounted) {
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<String> _firstRequest() async {
    _namedStreamWState.getDataForNamed.isLoading = false;
    return ReadyDataUtility.success;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(goRouter: GoRouterUtility.getGoRouterFromNamedTestMain(ExampleVMTestMain())));
}