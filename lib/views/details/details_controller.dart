import 'package:anime/data/api_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:openapi/openapi.dart';

class DetailsController extends GetxController {
  final AnimeApi _animeApi = ApiClient.instance.animeApi;
  final BuiltList<String> fields = BuiltList([
    "id",
    "title",
    "main_picture",
    "synopsis",
    "status",
    "rating",
    "rank",
    "media_type",
    "genres",
    "studio"
  ]);

  AnimeDetails? details;
  RxBool isLoading = false.obs;
  String? errorMessage;

  Future<void> getDetails(int animeId) async {
    try {
      isLoading.value = true;
      details = await _animeApi
          .getAnimeById(animeId: animeId, fields: fields)
          .then((res) => res.data);
    } on DioException catch (e) {
      errorMessage = '${e.response?.statusCode}: ${e.response?.statusMessage}';
    } finally {
      isLoading.value = false;
      update();
    }
  }
}
