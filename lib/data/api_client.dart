import 'package:openapi/openapi.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  ApiClient._internal();
  static ApiClient get instance => _instance;

  late final Openapi _openapi = Openapi()
    ..setApiKey('ApiKeyAuth', const String.fromEnvironment('API-KEY'));

  AnimeApi get animeApi => _openapi.getAnimeApi();
}
