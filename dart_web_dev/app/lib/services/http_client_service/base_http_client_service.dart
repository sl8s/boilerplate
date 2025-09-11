import 'package:http/http.dart' as http;

abstract class BaseHttpClientService {
  const BaseHttpClientService();

  http.Client? getHttpClient();
}
