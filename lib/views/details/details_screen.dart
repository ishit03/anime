import 'package:anime/views/details/details_controller.dart';
import 'package:anime/views/details/widgets/genre_section.dart';
import 'package:anime/views/details/widgets/info_section.dart';
import 'package:anime/views/details/widgets/synopsis_section.dart';
import 'package:anime/views/utility_widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.id, required this.background, super.key});
  final int id;
  final String background;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailsController());
    return Scaffold(
      body: GetBuilder<DetailsController>(initState: (state) {
        controller.getDetails(id);
      }, builder: (controller) {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final data = controller.details;
        return SizedBox.expand(
          child: DecoratedBox(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(background),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(.7), BlendMode.srcATop))),
              child: data != null
                  ? SingleChildScrollView(
                      controller: ScrollController(),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InfoSection(
                                pictureUrl: data.mainPicture.medium!,
                                title: data.title,
                                mediaType: data.mediaType,
                                studio: data.studio?[0].name,
                                rating: data.rating,
                                status: data.status,
                                rank: data.rank,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GenreSection(genres: data.genres?.toList() ?? []),
                              SynopsisSection(
                                  synopsis: data.synopsis ?? 'Not Available'),
                            ],
                          ),
                        ),
                      ),
                    )
                  : QErrorWidget(
                      message: controller.errorMessage,
                    )),
        );
      }),
    );
  }
}
