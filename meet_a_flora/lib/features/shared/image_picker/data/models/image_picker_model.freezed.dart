// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImagePickerModel {

 File get image;
/// Create a copy of ImagePickerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagePickerModelCopyWith<ImagePickerModel> get copyWith => _$ImagePickerModelCopyWithImpl<ImagePickerModel>(this as ImagePickerModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagePickerModel&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ImagePickerModel(image: $image)';
}


}

/// @nodoc
abstract mixin class $ImagePickerModelCopyWith<$Res>  {
  factory $ImagePickerModelCopyWith(ImagePickerModel value, $Res Function(ImagePickerModel) _then) = _$ImagePickerModelCopyWithImpl;
@useResult
$Res call({
 File image
});




}
/// @nodoc
class _$ImagePickerModelCopyWithImpl<$Res>
    implements $ImagePickerModelCopyWith<$Res> {
  _$ImagePickerModelCopyWithImpl(this._self, this._then);

  final ImagePickerModel _self;
  final $Res Function(ImagePickerModel) _then;

/// Create a copy of ImagePickerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,
  ));
}

}


/// Adds pattern-matching-related methods to [ImagePickerModel].
extension ImagePickerModelPatterns on ImagePickerModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImagePickerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImagePickerModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImagePickerModel value)  $default,){
final _that = this;
switch (_that) {
case _ImagePickerModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImagePickerModel value)?  $default,){
final _that = this;
switch (_that) {
case _ImagePickerModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( File image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImagePickerModel() when $default != null:
return $default(_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( File image)  $default,) {final _that = this;
switch (_that) {
case _ImagePickerModel():
return $default(_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( File image)?  $default,) {final _that = this;
switch (_that) {
case _ImagePickerModel() when $default != null:
return $default(_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _ImagePickerModel implements ImagePickerModel {
  const _ImagePickerModel({required this.image});
  

@override final  File image;

/// Create a copy of ImagePickerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagePickerModelCopyWith<_ImagePickerModel> get copyWith => __$ImagePickerModelCopyWithImpl<_ImagePickerModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagePickerModel&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'ImagePickerModel(image: $image)';
}


}

/// @nodoc
abstract mixin class _$ImagePickerModelCopyWith<$Res> implements $ImagePickerModelCopyWith<$Res> {
  factory _$ImagePickerModelCopyWith(_ImagePickerModel value, $Res Function(_ImagePickerModel) _then) = __$ImagePickerModelCopyWithImpl;
@override @useResult
$Res call({
 File image
});




}
/// @nodoc
class __$ImagePickerModelCopyWithImpl<$Res>
    implements _$ImagePickerModelCopyWith<$Res> {
  __$ImagePickerModelCopyWithImpl(this._self, this._then);

  final _ImagePickerModel _self;
  final $Res Function(_ImagePickerModel) _then;

/// Create a copy of ImagePickerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_ImagePickerModel(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

// dart format on
