import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_scribe_app/common/widgets/footer/footer_controller.dart';
import 'package:mind_scribe_app/l10n/l10n.dart';
import 'package:mind_scribe_app/src/routes/route_path.dart';

class Footer extends StatelessWidget {
  final FooterController controller = Get.put(FooterController());

  void _onItemTapped(int index) {
    controller.updateIndex(index);

    switch (index) {
      case 0:
        Get.toNamed(RoutePath.post);
        break;
      case 1:
        Get.toNamed(RoutePath.postList);
        break;
      case 2:
        // ここに処理を追加
        break;
      case 3:
        // ここに処理を追加
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: controller.selectedIndex.value,
      selectedItemColor: Colors.blue,
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
      onTap: _onItemTapped,
    );
  }
}
