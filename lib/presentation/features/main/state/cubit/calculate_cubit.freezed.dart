// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculateState {
  Map<String, double> get fields => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculateStateCopyWith<CalculateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateStateCopyWith<$Res> {
  factory $CalculateStateCopyWith(
          CalculateState value, $Res Function(CalculateState) then) =
      _$CalculateStateCopyWithImpl<$Res, CalculateState>;
  @useResult
  $Res call({Map<String, double> fields, double result});
}

/// @nodoc
class _$CalculateStateCopyWithImpl<$Res, $Val extends CalculateState>
    implements $CalculateStateCopyWith<$Res> {
  _$CalculateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateStateImplCopyWith<$Res>
    implements $CalculateStateCopyWith<$Res> {
  factory _$$CalculateStateImplCopyWith(_$CalculateStateImpl value,
          $Res Function(_$CalculateStateImpl) then) =
      __$$CalculateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, double> fields, double result});
}

/// @nodoc
class __$$CalculateStateImplCopyWithImpl<$Res>
    extends _$CalculateStateCopyWithImpl<$Res, _$CalculateStateImpl>
    implements _$$CalculateStateImplCopyWith<$Res> {
  __$$CalculateStateImplCopyWithImpl(
      _$CalculateStateImpl _value, $Res Function(_$CalculateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
    Object? result = null,
  }) {
    return _then(_$CalculateStateImpl(
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CalculateStateImpl implements _CalculateState {
  const _$CalculateStateImpl(
      {final Map<String, double> fields = const {}, this.result = 0.0})
      : _fields = fields;

  final Map<String, double> _fields;
  @override
  @JsonKey()
  Map<String, double> get fields {
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fields);
  }

  @override
  @JsonKey()
  final double result;

  @override
  String toString() {
    return 'CalculateState(fields: $fields, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateStateImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_fields), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateStateImplCopyWith<_$CalculateStateImpl> get copyWith =>
      __$$CalculateStateImplCopyWithImpl<_$CalculateStateImpl>(
          this, _$identity);
}

abstract class _CalculateState implements CalculateState {
  const factory _CalculateState(
      {final Map<String, double> fields,
      final double result}) = _$CalculateStateImpl;

  @override
  Map<String, double> get fields;
  @override
  double get result;
  @override
  @JsonKey(ignore: true)
  _$$CalculateStateImplCopyWith<_$CalculateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
