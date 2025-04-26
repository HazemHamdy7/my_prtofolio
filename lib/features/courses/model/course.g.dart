// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  name: json['name'] as String,
  imageUrl: json['image_url'] as String,
  description: Map<String, String>.from(json['description'] as Map),
  link: json['link'] as String,
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'name': instance.name,
  'image_url': instance.imageUrl,
  'description': instance.description,
  'link': instance.link,
};
