import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_scribe_app/l10n/l10n.dart';

enum Emotion {
  @JsonValue(0)
  sad,
  @JsonValue(1)
  neutral,
  @JsonValue(2)
  happy,
}

extension EmotionExtension on Emotion {
  String name(BuildContext context) {
    switch (this) {
      case Emotion.sad:
        return L10n.of(context)!.sad;
      case Emotion.neutral:
        return L10n.of(context)!.neutral;
      case Emotion.happy:
        return L10n.of(context)!.happy;
      default:
        return L10n.of(context)!.happy;
    }
  }
}
