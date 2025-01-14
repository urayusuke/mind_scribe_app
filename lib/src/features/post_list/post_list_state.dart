import 'package:get/get.dart';
import 'package:mind_scribe_app/common/models/post/post.dart';
import 'package:mind_scribe_app/src/features/post/model/emotion.dart';

class PostListState extends GetxController {
  var posts = const <Post>[].obs;
  var isLoading = false.obs;

  void init() {
    fetchPosts();
  }

  void fetchPosts() async {
    setIsLoading(true);
    try {
      final fetchedPosts = [
        Post(
          content: 'Hello, World!',
          emotion: Emotion.happy,
          createdAt: DateTime.now(),
        ),
        Post(
          content: 'Hello, Flutter!',
          emotion: Emotion.neutral,
          createdAt: DateTime.now().subtract(
            const Duration(days: 1),
          ),
        ),
        Post(
          content: 'Hello, World!',
          emotion: Emotion.happy,
          createdAt: DateTime.now().subtract(
            const Duration(days: 2),
          ),
        ),
        Post(
          content: 'Hello, GetX!',
          emotion: Emotion.sad,
          createdAt: DateTime.now().subtract(
            const Duration(days: 3),
          ),
        ),
        Post(
          content: 'Hello, World!',
          emotion: Emotion.happy,
          createdAt: DateTime.now().subtract(
            const Duration(days: 4),
          ),
        ),
      ];

      /// 投稿リストの感情に基づいてソート
      fetchedPosts.sort((a, b) {
        // aのemotionがhappyで、bのemotionがhappyでない場合、aを前に移動
        if (a.emotion == Emotion.happy && b.emotion != Emotion.happy) {
          return -1;
        }

        // aのemotionがhappyでなく、bのemotionがhappyの場合、bを前に移動
        if (a.emotion != Emotion.happy && b.emotion == Emotion.happy) {
          return 1;
        }

        // 両方のemotionが同じ場合、作成時間でソート
        return b.createdAt.compareTo(a.createdAt);
      });

      posts.value = fetchedPosts;

      setIsLoading(false);
    } catch (e) {
      setIsLoading(false);
    }
  }

  void searchPosts(Emotion emotion) {
    fetchPosts();

    final searchedPosts =
        posts.where((post) => post.emotion == emotion).toList();

    posts.value = searchedPosts;
  }

  void setIsLoading(bool value) {
    isLoading.value = value;
  }
}
