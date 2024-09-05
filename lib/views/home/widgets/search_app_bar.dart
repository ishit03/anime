import 'dart:async';

import 'package:anime/views/home/home_controller.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({required this.onAction, super.key});
  final VoidCallback onAction;
  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  final TextEditingController _controller = TextEditingController();
  Timer? debouncer;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        controller: _controller,
        textInputAction: TextInputAction.search,
        decoration: const InputDecoration(
          hintText: 'Search Anime...',
          border: InputBorder.none,
          isDense: true,
        ),
        onChanged: (query) => debounceTimer(query, searchAnime),
        onSubmitted: (query) => searchAnime,
      ),
      actions: [
        IconButton(
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                homeController.clearSearch();
              }
              widget.onAction();
            },
            icon: const Icon(
              Icons.close,
              size: 25,
            ))
      ],
    );
  }

  void searchAnime(String? query) {
    debouncer?.cancel();
    homeController.searchAnime(query: query);
  }

  void debounceTimer(String? query, Function(String? query) callback) {
    if (debouncer != null) {
      debouncer!.cancel();
    }
    debouncer = Timer(const Duration(seconds: 1), () {
      callback(query);
    });
    homeController.onSearchStart();
  }
}
