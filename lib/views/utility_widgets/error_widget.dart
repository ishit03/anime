import 'package:anime/extensions/text_style.dart';
import 'package:flutter/material.dart';

class QErrorWidget extends StatelessWidget {
  const QErrorWidget({this.message, super.key});
  final String? message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? 'Something Went Wrong',
        style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
