import 'package:dart_web_dev/services/http_client_service/base_http_client_service.dart';
import 'package:http/http.dart' as http;

final class DefaultHttpClientService extends BaseHttpClientService {
  static final DefaultHttpClientService instance = DefaultHttpClientService._();
  http.Client? _httpClient;

  DefaultHttpClientService._();

  @override
  http.Client? getHttpClient() {
    if (_httpClient != null) {
      return _httpClient;
    }
    _httpClient = http.Client();
    return _httpClient;
  }
}
