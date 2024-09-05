import 'package:anime/extensions/text_style.dart';
import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({required this.title, required this.content, super.key});
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: context.headlineSmall,
              ),
              const SizedBox(
                height: 8,
              ),
              content
            ],
          ),
        ),
      ),
    );
  }
}
