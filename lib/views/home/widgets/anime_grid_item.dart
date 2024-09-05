import 'package:anime/extensions/text_style.dart';
import 'package:anime/views/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openapi/openapi.dart';

class AnimeGridItem extends StatelessWidget {
  const AnimeGridItem({required this.details, super.key});
  final AnimeDetails details;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Get.to(() => DetailsScreen(
                id: details.id,
                background: details.mainPicture.large!,
              ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0)),
                child: Image.network(
                  details.mainPicture.medium!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
                child: Center(
              child: Text(
                details.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: context.labelMedium,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
