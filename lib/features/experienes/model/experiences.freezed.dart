// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experiences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Experiences {

 Map<String, String> get title; Map<String, String> get description;
/// Create a copy of Experiences
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExperiencesCopyWith<Experiences> get copyWith => _$ExperiencesCopyWithImpl<Experiences>(this as Experiences, _$identity);

  /// Serializes this Experiences to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Experiences&&const DeepCollectionEquality().equals(other.title, title)&&const DeepCollectionEquality().equals(other.description, description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(title),const DeepCollectionEquality().hash(description));

@override
String toString() {
  return 'Experiences(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $ExperiencesCopyWith<$Res>  {
  factory $ExperiencesCopyWith(Experiences value, $Res Function(Experiences) _then) = _$ExperiencesCopyWithImpl;
@useResult
$Res call({
 Map<String, String> title, Map<String, String> description
});




}
/// @nodoc
class _$ExperiencesCopyWithImpl<$Res>
    implements $ExperiencesCopyWith<$Res> {
  _$ExperiencesCopyWithImpl(this._self, this._then);

  final Experiences _self;
  final $Res Function(Experiences) _then;

/// Create a copy of Experiences
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Map<String, String>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Experiences implements Experiences {
  const _Experiences({required final  Map<String, String> title, required final  Map<String, String> description}): _title = title,_description = description;
  factory _Experiences.fromJson(Map<String, dynamic> json) => _$ExperiencesFromJson(json);

 final  Map<String, String> _title;
@override Map<String, String> get title {
  if (_title is EqualUnmodifiableMapView) return _title;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_title);
}

 final  Map<String, String> _description;
@override Map<String, String> get description {
  if (_description is EqualUnmodifiableMapView) return _description;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_description);
}


/// Create a copy of Experiences
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExperiencesCopyWith<_Experiences> get copyWith => __$ExperiencesCopyWithImpl<_Experiences>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExperiencesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Experiences&&const DeepCollectionEquality().equals(other._title, _title)&&const DeepCollectionEquality().equals(other._description, _description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_title),const DeepCollectionEquality().hash(_description));

@override
String toString() {
  return 'Experiences(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ExperiencesCopyWith<$Res> implements $ExperiencesCopyWith<$Res> {
  factory _$ExperiencesCopyWith(_Experiences value, $Res Function(_Experiences) _then) = __$ExperiencesCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> title, Map<String, String> description
});




}
/// @nodoc
class __$ExperiencesCopyWithImpl<$Res>
    implements _$ExperiencesCopyWith<$Res> {
  __$ExperiencesCopyWithImpl(this._self, this._then);

  final _Experiences _self;
  final $Res Function(_Experiences) _then;

/// Create a copy of Experiences
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_Experiences(
title: null == title ? _self._title : title // ignore: cast_nullable_to_non_nullable
as Map<String, String>,description: null == description ? _self._description : description // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
