// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FieldModel {
  String? get left => throw _privateConstructorUsedError;
  String? get center => throw _privateConstructorUsedError;
  String? get right => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldModelCopyWith<FieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldModelCopyWith<$Res> {
  factory $FieldModelCopyWith(
          FieldModel value, $Res Function(FieldModel) then) =
      _$FieldModelCopyWithImpl<$Res, FieldModel>;
  @useResult
  $Res call({String? left, String? center, String? right});
}

/// @nodoc
class _$FieldModelCopyWithImpl<$Res, $Val extends FieldModel>
    implements $FieldModelCopyWith<$Res> {
  _$FieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? center = freezed,
    Object? right = freezed,
  }) {
    return _then(_value.copyWith(
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as String?,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as String?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldModelImplCopyWith<$Res>
    implements $FieldModelCopyWith<$Res> {
  factory _$$FieldModelImplCopyWith(
          _$FieldModelImpl value, $Res Function(_$FieldModelImpl) then) =
      __$$FieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? left, String? center, String? right});
}

/// @nodoc
class __$$FieldModelImplCopyWithImpl<$Res>
    extends _$FieldModelCopyWithImpl<$Res, _$FieldModelImpl>
    implements _$$FieldModelImplCopyWith<$Res> {
  __$$FieldModelImplCopyWithImpl(
      _$FieldModelImpl _value, $Res Function(_$FieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? center = freezed,
    Object? right = freezed,
  }) {
    return _then(_$FieldModelImpl(
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as String?,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as String?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FieldModelImpl implements _FieldModel {
  const _$FieldModelImpl({this.left, this.center, this.right});

  @override
  final String? left;
  @override
  final String? center;
  @override
  final String? right;

  @override
  String toString() {
    return 'FieldModel(left: $left, center: $center, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldModelImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.right, right) || other.right == right));
  }

  @override
  int get hashCode => Object.hash(runtimeType, left, center, right);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldModelImplCopyWith<_$FieldModelImpl> get copyWith =>
      __$$FieldModelImplCopyWithImpl<_$FieldModelImpl>(this, _$identity);
}

abstract class _FieldModel implements FieldModel {
  const factory _FieldModel(
      {final String? left,
      final String? center,
      final String? right}) = _$FieldModelImpl;

  @override
  String? get left;
  @override
  String? get center;
  @override
  String? get right;
  @override
  @JsonKey(ignore: true)
  _$$FieldModelImplCopyWith<_$FieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
