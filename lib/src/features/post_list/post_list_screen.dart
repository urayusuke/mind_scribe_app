import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mind_scribe_app/common/widgets/footer/footer.dart';
import 'package:mind_scribe_app/l10n/l10n.dart';
import 'package:get/get.dart';
import 'package:mind_scribe_app/src/features/post/model/emotion.dart';
import 'package:mind_scribe_app/src/features/post_list/post_list_state.dart';

class PostListScreen extends GetView<PostListState> {
  PostListScreen({super.key}) {
    // コントローラーを初期化
    Get.put(PostListState(), permanent: false).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(L10n.of(context)!.postList),
        automaticallyImplyLeading: false,
      ),
      body: Obx(
        () {
          return Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.sentiment_very_dissatisfied),
                      onPressed: () {
                        controller.searchPosts(Emotion.sad);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.sentiment_neutral),
                      onPressed: () {
                        controller.searchPosts(Emotion.neutral);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.sentiment_very_satisfied),
                      onPressed: () {
                        controller.searchPosts(Emotion.happy);
                      },
                    ),
                    // リセットボタン
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () {
                        controller.fetchPosts();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (context, index) {
                    final post = controller.posts[index];
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(post.emotion.icon),
                        title: Text(post.content),
                        subtitle: Text(post.emotion.name(context)),
                        trailing: Text(
                          DateFormat('yyyy-MM-dd HH:mm')
                              .format(post.updatedAt ?? post.createdAt),
                        ),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
