import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subject.g.dart';

@JsonSerializable()
class Subject {
  @JsonKey(name: 'episodes_info')
  String? episodesInfo;
  String? rate;
  @JsonKey(name: 'cover_x')
  int? coverX;
  String? title;
  String? url;
  bool? playable;
  String? cover;
  String? id;
  @JsonKey(name: 'cover_y')
  int? coverY;
  @JsonKey(name: 'is_new')
  bool? isNew;

  Subject({
    this.episodesInfo,
    this.rate,
    this.coverX,
    this.title,
    this.url,
    this.playable,
    this.cover,
    this.id,
    this.coverY,
    this.isNew,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return _$SubjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubjectToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Subject) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      episodesInfo.hashCode ^
      rate.hashCode ^
      coverX.hashCode ^
      title.hashCode ^
      url.hashCode ^
      playable.hashCode ^
      cover.hashCode ^
      id.hashCode ^
      coverY.hashCode ^
      isNew.hashCode;
}
