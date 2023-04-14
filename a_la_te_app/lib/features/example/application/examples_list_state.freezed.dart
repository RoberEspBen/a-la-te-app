// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'examples_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExamplesListState {
  List<Example> get examples => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExamplesListStateCopyWith<ExamplesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamplesListStateCopyWith<$Res> {
  factory $ExamplesListStateCopyWith(
          ExamplesListState value, $Res Function(ExamplesListState) then) =
      _$ExamplesListStateCopyWithImpl<$Res, ExamplesListState>;
  @useResult
  $Res call({List<Example> examples, StateStatus status, String errorMessage});
}

/// @nodoc
class _$ExamplesListStateCopyWithImpl<$Res, $Val extends ExamplesListState>
    implements $ExamplesListStateCopyWith<$Res> {
  _$ExamplesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examples = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      examples: null == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Example>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExamplesListStateCopyWith<$Res>
    implements $ExamplesListStateCopyWith<$Res> {
  factory _$$_ExamplesListStateCopyWith(_$_ExamplesListState value,
          $Res Function(_$_ExamplesListState) then) =
      __$$_ExamplesListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Example> examples, StateStatus status, String errorMessage});
}

/// @nodoc
class __$$_ExamplesListStateCopyWithImpl<$Res>
    extends _$ExamplesListStateCopyWithImpl<$Res, _$_ExamplesListState>
    implements _$$_ExamplesListStateCopyWith<$Res> {
  __$$_ExamplesListStateCopyWithImpl(
      _$_ExamplesListState _value, $Res Function(_$_ExamplesListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examples = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ExamplesListState(
      examples: null == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<Example>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExamplesListState implements _ExamplesListState {
  const _$_ExamplesListState(
      {final List<Example> examples = const [],
      this.status = StateStatus.initial,
      this.errorMessage = ''})
      : _examples = examples;

  final List<Example> _examples;
  @override
  @JsonKey()
  List<Example> get examples {
    if (_examples is EqualUnmodifiableListView) return _examples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examples);
  }

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ExamplesListState(examples: $examples, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamplesListState &&
            const DeepCollectionEquality().equals(other._examples, _examples) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_examples), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamplesListStateCopyWith<_$_ExamplesListState> get copyWith =>
      __$$_ExamplesListStateCopyWithImpl<_$_ExamplesListState>(
          this, _$identity);
}

abstract class _ExamplesListState implements ExamplesListState {
  const factory _ExamplesListState(
      {final List<Example> examples,
      final StateStatus status,
      final String errorMessage}) = _$_ExamplesListState;

  @override
  List<Example> get examples;
  @override
  StateStatus get status;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ExamplesListStateCopyWith<_$_ExamplesListState> get copyWith =>
      throw _privateConstructorUsedError;
}
