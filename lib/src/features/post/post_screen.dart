import 'package:flutter/material.dart';
import 'package:mind_scribe_app/common/widgets/footer/footer.dart';
import 'package:mind_scribe_app/l10n/l10n.dart';
import 'package:get/get.dart';
import 'package:mind_scribe_app/src/features/post/model/emotion.dart';
import 'package:mind_scribe_app/src/features/post/post_state.dart';

class PostScreen extends GetView<PostState> {
  PostScreen({super.key}) {
    // コントローラーを初期化
    Get.put(PostState(), permanent: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(L10n.of(context)!.spell),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Obx(
          () => Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: L10n.of(context)!.description,
                  ),
                  initialValue: controller.post.value.content,
                  maxLines: 10,
                  onChanged: controller.updateContent,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.sentiment_very_dissatisfied),
                        color: controller.post.value.emotion == Emotion.sad
                            ? Colors.blue
                            : Colors.grey,
                        onPressed: () {
                          controller.updateEmotion(Emotion.sad);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.sentiment_neutral),
                        color: controller.post.value.emotion == Emotion.neutral
                            ? Colors.blue
                            : Colors.grey,
                        onPressed: () {
                          controller.updateEmotion(Emotion.neutral);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.sentiment_very_satisfied),
                        color: controller.post.value.emotion == Emotion.happy
                            ? Colors.blue
                            : Colors.grey,
                        onPressed: () {
                          controller.updateEmotion(Emotion.happy);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: Text(L10n.of(context)!.spell),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
