import 'package:dart_common_dev/named_utility/ready_data_utility.dart';
import 'package:dart_mobile_dev/named_theme/base_named_theme.dart';
import 'package:dart_mobile_dev/named_utility/flutter_theme_utility.dart';
import 'package:dart_mobile_dev/named_utility/platform_utility.dart';
import 'package:dart_mobile_dev/named_vm/home_vm/data_for_home_vm.dart';
import 'package:dart_mobile_dev/named_vm/home_vm/enum_data_for_home_vm.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;

final class HomeVM extends StatefulWidget {
  const HomeVM({super.key});

  @override
  State<HomeVM> createState() => _HomeVMState();
}

final class _HomeVMState extends State<HomeVM> {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForHomeVM> _namedStreamWState;

  @override
  Widget build(BuildContext context) {
    final namedThemeFromContext = FlutterThemeUtility.getNamedThemeFromContext(context);
    final textThemeFromContextAndColor = PlatformUtility.getTextThemeFromContextAndColor(context, namedThemeFromContext.text);
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch(dataWNamed.getEnumDataForNamed) {
      case EnumDataForHomeVM.isLoading:
        return PlatformUtility.getNamedWidgetFromContextAndMobileWidgetAndTabletWidgetAndLargeTabletWidget(
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
        );
      case EnumDataForHomeVM.exception:
        return PlatformUtility.getNamedWidgetFromContextAndMobileWidgetAndTabletWidgetAndLargeTabletWidget(
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
        );
      case EnumDataForHomeVM.success:
        return PlatformUtility.getNamedWidgetFromContextAndMobileWidgetAndTabletWidgetAndLargeTabletWidget(
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

  Widget _buildMobileWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForHomeVM dataWNamed) {
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

  Widget _buildTabletWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForHomeVM dataWNamed) {
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

  Widget _buildLargeTabletWidgetWException(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForHomeVM dataWNamed) {
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

  Widget _buildMobileWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForHomeVM dataWNamed) {
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

  Widget _buildTabletWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForHomeVM dataWNamed) {
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

  Widget _buildLargeTabletWidgetWSuccess(BuildContext context,BaseNamedTheme namedTheme, TextTheme textTheme, DataForHomeVM dataWNamed) {
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

  @override
  void initState() {
    _namedStreamWState = lamm.DefaultStreamWState(DataForHomeVM(true));
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
    lamm.debugPrint("HomeVM: $firstRequest");
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