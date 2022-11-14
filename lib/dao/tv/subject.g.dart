// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subject _$SubjectFromJson(Map<String, dynamic> json) => Subject(
      episodesInfo: json['episodes_info'] as String?,
      rate: json['rate'] as String?,
      coverX: json['cover_x'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      playable: json['playable'] as bool?,
      cover: json['cover'] as String?,
      id: json['id'] as String?,
      coverY: json['cover_y'] as int?,
      isNew: json['is_new'] as bool?,
    );

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'episodes_info': instance.episodesInfo,
      'rate': instance.rate,
      'cover_x': instance.coverX,
      'title': instance.title,
      'url': instance.url,
      'playable': instance.playable,
      'cover': instance.cover,
      'id': instance.id,
      'cover_y': instance.coverY,
      'is_new': instance.isNew,
    };
