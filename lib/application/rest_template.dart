
import 'package:get/get.dart';

class RestTemplate extends GetConnect {
  
  final String name;
  static const String NO_AUTH_TAG = "NO_AUTH_TAG";
  static const String AUTH_TAG = "AUTH_TAG";

  RestTemplate() : name = 'Sem Autenticação';

  RestTemplate.auth() : name = 'Autenticação' {
    httpClient.addRequestModifier((request) {
      request.headers['Authorization'] = 'TokenX';
      return request;
    });
  }


}