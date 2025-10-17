import 'package:dart_web_boilerplate/models/example/wrappers/example_wrapper.dart';
import 'package:dart_web_boilerplate/models/example/wrappers/list_example_wrapper.dart';
import 'package:dart_web_boilerplate/services/http_client_service/base_http_client_service.dart';
import 'package:meta/meta.dart';
import 'package:smvp_dart/smvp.dart';

@immutable
base class ExampleWrapperRepository<
  T extends ExampleWrapper,
  Y extends ListExampleWrapper
>
    extends BaseModelWrapperRepository {
  @protected
  final BaseHttpClientService baseHttpClientService;

  const ExampleWrapperRepository({required this.baseHttpClientService});

  @override
  void dispose() {}

  Future<ResultModelWrapper<T>> getExampleFromHttpClientService() async {
    throw Exception();
  }
}
