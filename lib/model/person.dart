import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// build_runnerを使うことで自動生成されるファイル
part 'person.freezed.dart';
part 'person.g.dart';

// Personクラスを定義する
@freezed
class Person with _$Person {
  factory Person({
    int? id,
    String? name,
    String? username,
    String? email,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
