// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoursesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoursesState()';
}


}

/// @nodoc
class $CoursesStateCopyWith<$Res>  {
$CoursesStateCopyWith(CoursesState _, $Res Function(CoursesState) __);
}


/// @nodoc


class CoursesInitial implements CoursesState {
  const CoursesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoursesState.initial()';
}


}




/// @nodoc


class CoursesLoading implements CoursesState {
  const CoursesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoursesState.loading()';
}


}




/// @nodoc


class CoursesLoaded implements CoursesState {
  const CoursesLoaded({required final  List<Course> courses}): _courses = courses;
  

 final  List<Course> _courses;
 List<Course> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}


/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesLoadedCopyWith<CoursesLoaded> get copyWith => _$CoursesLoadedCopyWithImpl<CoursesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesLoaded&&const DeepCollectionEquality().equals(other._courses, _courses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses));

@override
String toString() {
  return 'CoursesState.loaded(courses: $courses)';
}


}

/// @nodoc
abstract mixin class $CoursesLoadedCopyWith<$Res> implements $CoursesStateCopyWith<$Res> {
  factory $CoursesLoadedCopyWith(CoursesLoaded value, $Res Function(CoursesLoaded) _then) = _$CoursesLoadedCopyWithImpl;
@useResult
$Res call({
 List<Course> courses
});




}
/// @nodoc
class _$CoursesLoadedCopyWithImpl<$Res>
    implements $CoursesLoadedCopyWith<$Res> {
  _$CoursesLoadedCopyWithImpl(this._self, this._then);

  final CoursesLoaded _self;
  final $Res Function(CoursesLoaded) _then;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? courses = null,}) {
  return _then(CoursesLoaded(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<Course>,
  ));
}


}

/// @nodoc


class CoursesError implements CoursesState {
  const CoursesError({required this.message});
  

 final  String message;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesErrorCopyWith<CoursesError> get copyWith => _$CoursesErrorCopyWithImpl<CoursesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoursesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CoursesErrorCopyWith<$Res> implements $CoursesStateCopyWith<$Res> {
  factory $CoursesErrorCopyWith(CoursesError value, $Res Function(CoursesError) _then) = _$CoursesErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CoursesErrorCopyWithImpl<$Res>
    implements $CoursesErrorCopyWith<$Res> {
  _$CoursesErrorCopyWithImpl(this._self, this._then);

  final CoursesError _self;
  final $Res Function(CoursesError) _then;

/// Create a copy of CoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CoursesError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
