import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_scribe_app/l10n/l10n.dart';
import 'package:mind_scribe_app/src/routes/route_path.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.post_add), label: L10n.of(context)!.post),
        BottomNavigationBarItem(
            icon: const Icon(Icons.library_books),
            label: L10n.of(context)!.postList),
        BottomNavigationBarItem(
            icon: const Icon(Icons.search), label: L10n.of(context)!.search),
        BottomNavigationBarItem(
            icon: const Icon(Icons.person), label: L10n.of(context)!.myPage),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Get.toNamed(RoutePath.post);
            break;
          case 1:
            break;
          case 2:
            break;
          case 3:
            break;
        }
      },
    );
  }
}
