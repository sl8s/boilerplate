import 'package:dart_web_dev/named_theme/base_named_theme.dart';
import 'package:dart_web_dev/named_utility/ready_data_utility.dart';
import 'package:dart_web_dev/named_utility/flutter_theme_utility.dart';
import 'package:dart_web_dev/named_utility/platform_utility.dart';
import 'package:dart_web_dev/named_vm/example_vm/data_for_example_vm.dart';
import 'package:dart_web_dev/named_vm/example_vm/enum_data_for_example_vm.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;

final class ExampleVM extends StatefulWidget {
  const ExampleVM({super.key});

  @override
  State<ExampleVM> createState() => _ExampleVMState();
}

final class _ExampleVMState extends State<ExampleVM> {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForExampleVM> _namedStreamWState;

  @override
  Widget build(BuildContext context) {
    final namedThemeFromContext = FlutterThemeUtility.getNamedThemeFromContext(context);
    final textThemeFromContextAndColor = PlatformUtility.getTextThemeFromContextAndColor(context, namedThemeFromContext.text);
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch(dataWNamed.getEnumDataForNamed) {
      case EnumDataForExampleVM.isLoading:
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
      case EnumDataForExampleVM.exception:
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
      case EnumDataForExampleVM.success:
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

  Widget _buildMobileWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildTabletWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildLargeTabletWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildDesktopWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildLargeDesktopWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildTVWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildMobileWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildTabletWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildLargeTabletWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildDesktopWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildLargeDesktopWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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

  Widget _buildTVWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForExampleVM dataWNamed) {
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
    _namedStreamWState = lamm.DefaultStreamWState(DataForExampleVM(true));
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
    lamm.debugPrint("ExampleVM: $firstRequest");
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