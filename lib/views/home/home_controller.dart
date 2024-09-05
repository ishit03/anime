import 'package:anime/data/api_client.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:openapi/openapi.dart';

class HomeController extends GetxController {
  final AnimeApi _animeApi = ApiClient.instance.animeApi;

  RxList<AnimeNode> animeList = <AnimeNode>[].obs;
  List<AnimeNode> cachedList = List.empty(growable: true);
  RxBool isLoading = false.obs;
  String? errorMessage;
  int offset = 0;
  @override
  void onInit() {
    super.onInit();
    getAnime();
  }

  Future<void> getAnime() async {
    try {
      isLoading.value = true;
      final page =
          await _animeApi.getAnime(offset: offset).then((res) => res.data);
      final list = page?.data?.toList();
      animeList.addAllIf(list != null, list!);
      offset += 15;
    } on DioException catch (e) {
      errorMessage = e.response?.statusCode == 404
          ? 'Data Not Found'
          : 'Something Went Wrong..';
    } finally {
      isLoading.value = false;
      update();
    }
  }

  Future<void> searchAnime({required String? query}) async {
    if (query == null || query.isEmpty) {
      clearSearch();
      return;
    }
    try {
      isLoading.value = true;
      final searchedList = await _animeApi
          .getAnime(q: query)
          .then((res) => res.data?.data?.toList());
      if (searchedList != null && searchedList.isNotEmpty) {
        cachedList.addAll(animeList);
        animeList.assignAll(searchedList);
      }
    } on DioException {
      errorMessage = 'Data Not Found';
    } finally {
      isLoading.value = false;
      update();
    }
  }

  void onSearchStart() {
    if (cachedList.isEmpty) {
      cachedList.addAll(animeList);
      animeList.clear();
      update();
    }
  }

  void clearSearch() {
    if (cachedList.isNotEmpty) {
      animeList.assignAll(cachedList);
      cachedList.clear();
      errorMessage = null;
      update();
    }
  }

  bool get isShowingSearchList => cachedList.isNotEmpty;
}

final homeController = Get.put(HomeController());
