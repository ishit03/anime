import 'package:anime/extensions/text_style.dart';
import 'package:anime/views/home/widgets/search_app_bar.dart';
import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AnimatedAppBar({super.key});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AnimatedAppBarState extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));
  bool isSearchOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: _controller.duration!,
      transitionBuilder: (child, animation) {
        final outAnimation =
            Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
                .animate(animation);
        final inAnimation =
            Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                .animate(animation);
        return SlideTransition(
            position: child.key == const ValueKey('searchAppBar')
                ? inAnimation
                : outAnimation,
            child: child);
      },
      child: isSearchOpen
          ? SearchAppBar(
              key: const ValueKey('searchAppBar'), onAction: _onAction)
          : AppBar(
              key: const ValueKey('appBar'),
              title: Text(
                'Anime',
                style: context.headlineMedium,
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: _onAction,
                    icon: const Icon(
                      Icons.search,
                      size: 25,
                    ))
              ],
            ),
    );
  }

  void _onAction() {
    setState(() {
      isSearchOpen = !isSearchOpen;
    });
  }
}
