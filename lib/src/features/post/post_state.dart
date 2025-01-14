import 'package:get/get.dart';
import 'package:mind_scribe_app/common/models/post/post.dart';
import 'package:mind_scribe_app/src/features/post/model/emotion.dart';

class PostState extends GetxController {
  // Single post data
  var post = Post(createdAt: DateTime.now()).obs;

  // Loading state
  var isLoading = false.obs;

  // Error message
  var errorMessage = ''.obs;

  // Fetch posts from a server or database
  Future<void> fetchPosts() async {
    try {
      isLoading(true);
    } catch (e) {
      errorMessage.value = 'Failed to fetch posts';
    } finally {
      isLoading(false);
    }
  }

  // 状態管理のためのメソッドを追加
  void updateContent(String content) {
    // ここで状態を更新
    post.value = post.value.copyWith(content: content);
  }

  void updateEmotion(Emotion emotion) {
    // ここで状態を更新
    post.value = post.value.copyWith(emotion: emotion);
  }
}
