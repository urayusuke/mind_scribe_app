import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_scribe_app/common/converters/datetime_converter.dart';
import 'package:mind_scribe_app/src/features/post/model/emotion.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @Default('') String content,
    @Default(Emotion.neutral) Emotion emotion,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updatedAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}