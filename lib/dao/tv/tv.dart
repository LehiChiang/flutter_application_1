import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'subject.dart';

part 'tv.g.dart';

@JsonSerializable()
class Tv {
  List<Subject>? subjects;

  Tv({this.subjects});

  factory Tv.fromJson(Map<String, dynamic> json) => _$TvFromJson(json);

  Map<String, dynamic> toJson() => _$TvToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Tv) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => subjects.hashCode;
}
