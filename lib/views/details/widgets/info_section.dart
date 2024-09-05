import 'package:anime/extensions/text_style.dart';
import 'package:anime/views/details/widgets/info_chip.dart';
import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection(
      {required this.pictureUrl,
      required this.title,
      this.mediaType,
      this.studio,
      this.rating,
      this.status,
      this.rank,
      super.key});
  final String pictureUrl;
  final String title;
  final String? mediaType;
  final String? studio;
  final String? rating;
  final String? status;
  final int? rank;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 150,
              width: 100,
              child: Image.network(
                pictureUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                      child: Text(
                    title,
                    style: context.headlineSmall,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 5.0,
                    runSpacing: 3.0,
                    children: [
                      InfoChip(
                        text: '#${rank ?? 0}',
                        tooltip: 'Rank',
                      ),
                      InfoChip(
                        text: rating ?? 'N/A',
                        tooltip: 'Ranking',
                      ),
                      InfoChip(
                        text: mediaType ?? 'N/A',
                        tooltip: 'Media Type',
                      ),
                      InfoChip(
                        text: studio ?? 'N/A',
                        tooltip: 'Studio',
                      ),
                      InfoChip(
                        text: status ?? 'N/A',
                        tooltip: 'Status',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
