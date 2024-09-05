import 'package:anime/views/home/home_controller.dart';
import 'package:anime/views/home/widgets/anime_grid_item.dart';
import 'package:anime/views/utility_widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimeGridView extends StatelessWidget {
  const AnimeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),

      //Implementing Lazy Loading
      child: NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels ==
                  notification.metrics.maxScrollExtent &&
              !homeController.isShowingSearchList) {
            homeController.getAnime();
          }
          return true;
        },
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: GetBuilder<HomeController>(
              init: homeController,
              builder: (controller) {
                final list = controller.animeList;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 8,
                                    crossAxisSpacing: 8,
                                    mainAxisExtent: 200.0),
                            itemCount: list.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return AnimeGridItem(
                                key: ValueKey(list[index].node!.id),
                                details: list[index].node!,
                              );
                            })),
                    if (controller.errorMessage != null)
                      QErrorWidget(
                        message: controller.errorMessage,
                      ),
                    Obx(() {
                      return controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : const SizedBox(
                              height: 20,
                            );
                    })
                  ],
                );
              }),
        ),
      ),
    );
  }
}
