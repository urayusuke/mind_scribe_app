// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      content: json['content'] as String? ?? '',
      emotion: $enumDecodeNullable(_$EmotionEnumMap, json['emotion']) ??
          Emotion.neutral,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'emotion': _$EmotionEnumMap[instance.emotion]!,
    };

const _$EmotionEnumMap = {
  Emotion.sad: 0,
  Emotion.neutral: 1,
  Emotion.happy: 2,
};
