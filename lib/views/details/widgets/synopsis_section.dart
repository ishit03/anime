import 'package:anime/extensions/text_style.dart';
import 'package:anime/views/details/widgets/content_widget.dart';
import 'package:flutter/material.dart';

class SynopsisSection extends StatelessWidget {
  const SynopsisSection({required this.synopsis, super.key});
  final String synopsis;

  @override
  Widget build(BuildContext context) {
    return ContentWidget(
        title: 'Synopsis',
        content: SizedBox(
          child: Text(
            synopsis,
            style: context.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
            textAlign: TextAlign.justify,
          ),
        ));
  }
}
