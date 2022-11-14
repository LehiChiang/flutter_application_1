// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Picture {
  String url;
  String title;
  Picture({
    required this.url,
    required this.title,
  });

  Picture copyWith({
    String? url,
    String? title,
  }) {
    return Picture(
      url: url ?? this.url,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'title': title,
    };
  }

  factory Picture.fromMap(Map<String, dynamic> map) {
    return Picture(
      url: map['url'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Picture.fromJson(String source) =>
      Picture.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Picture(url: $url, title: $title)';

  @override
  bool operator ==(covariant Picture other) {
    if (identical(this, other)) return true;

    return other.url == url && other.title == title;
  }

  @override
  int get hashCode => url.hashCode ^ title.hashCode;
}
