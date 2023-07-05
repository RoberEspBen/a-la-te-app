// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchState {
  List<MatchModel> get matches => throw _privateConstructorUsedError;
  List<MatchModel> get filterMatches => throw _privateConstructorUsedError;
  String get currentFilterValue => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchStateCopyWith<MatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchStateCopyWith<$Res> {
  factory $MatchStateCopyWith(
          MatchState value, $Res Function(MatchState) then) =
      _$MatchStateCopyWithImpl<$Res, MatchState>;
  @useResult
  $Res call(
      {List<MatchModel> matches,
      List<MatchModel> filterMatches,
      String currentFilterValue,
      StateStatus status,
      String errorMessage});
}

/// @nodoc
class _$MatchStateCopyWithImpl<$Res, $Val extends MatchState>
    implements $MatchStateCopyWith<$Res> {
  _$MatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? filterMatches = null,
    Object? currentFilterValue = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      filterMatches: null == filterMatches
          ? _value.filterMatches
          : filterMatches // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      currentFilterValue: null == currentFilterValue
          ? _value.currentFilterValue
          : currentFilterValue // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_MatchStateCopyWith<$Res>
    implements $MatchStateCopyWith<$Res> {
  factory _$$_MatchStateCopyWith(
          _$_MatchState value, $Res Function(_$_MatchState) then) =
      __$$_MatchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MatchModel> matches,
      List<MatchModel> filterMatches,
      String currentFilterValue,
      StateStatus status,
      String errorMessage});
}

/// @nodoc
class __$$_MatchStateCopyWithImpl<$Res>
    extends _$MatchStateCopyWithImpl<$Res, _$_MatchState>
    implements _$$_MatchStateCopyWith<$Res> {
  __$$_MatchStateCopyWithImpl(
      _$_MatchState _value, $Res Function(_$_MatchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
    Object? filterMatches = null,
    Object? currentFilterValue = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_MatchState(
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      filterMatches: null == filterMatches
          ? _value._filterMatches
          : filterMatches // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      currentFilterValue: null == currentFilterValue
          ? _value.currentFilterValue
          : currentFilterValue // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_MatchState implements _MatchState {
  const _$_MatchState(
      {final List<MatchModel> matches = const [],
      final List<MatchModel> filterMatches = const [],
      this.currentFilterValue = '',
      this.status = StateStatus.initial,
      this.errorMessage = ''})
      : _matches = matches,
        _filterMatches = filterMatches;

  final List<MatchModel> _matches;
  @override
  @JsonKey()
  List<MatchModel> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  final List<MatchModel> _filterMatches;
  @override
  @JsonKey()
  List<MatchModel> get filterMatches {
    if (_filterMatches is EqualUnmodifiableListView) return _filterMatches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterMatches);
  }

  @override
  @JsonKey()
  final String currentFilterValue;
  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MatchState(matches: $matches, filterMatches: $filterMatches, currentFilterValue: $currentFilterValue, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchState &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            const DeepCollectionEquality()
                .equals(other._filterMatches, _filterMatches) &&
            (identical(other.currentFilterValue, currentFilterValue) ||
                other.currentFilterValue == currentFilterValue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_matches),
      const DeepCollectionEquality().hash(_filterMatches),
      currentFilterValue,
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchStateCopyWith<_$_MatchState> get copyWith =>
      __$$_MatchStateCopyWithImpl<_$_MatchState>(this, _$identity);
}

abstract class _MatchState implements MatchState {
  const factory _MatchState(
      {final List<MatchModel> matches,
      final List<MatchModel> filterMatches,
      final String currentFilterValue,
      final StateStatus status,
      final String errorMessage}) = _$_MatchState;

  @override
  List<MatchModel> get matches;
  @override
  List<MatchModel> get filterMatches;
  @override
  String get currentFilterValue;
  @override
  StateStatus get status;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MatchStateCopyWith<_$_MatchState> get copyWith =>
      throw _privateConstructorUsedError;
}
