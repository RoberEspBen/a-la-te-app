// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchDetailsState {
  Player? get firstPlayer => throw _privateConstructorUsedError;
  Player? get secondPlayer => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchDetailsStateCopyWith<MatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchDetailsStateCopyWith<$Res> {
  factory $MatchDetailsStateCopyWith(
          MatchDetailsState value, $Res Function(MatchDetailsState) then) =
      _$MatchDetailsStateCopyWithImpl<$Res, MatchDetailsState>;
  @useResult
  $Res call(
      {Player? firstPlayer,
      Player? secondPlayer,
      StateStatus status,
      String errorMessage});

  $PlayerCopyWith<$Res>? get firstPlayer;
  $PlayerCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class _$MatchDetailsStateCopyWithImpl<$Res, $Val extends MatchDetailsState>
    implements $MatchDetailsStateCopyWith<$Res> {
  _$MatchDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstPlayer = freezed,
    Object? secondPlayer = freezed,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      firstPlayer: freezed == firstPlayer
          ? _value.firstPlayer
          : firstPlayer // ignore: cast_nullable_to_non_nullable
              as Player?,
      secondPlayer: freezed == secondPlayer
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as Player?,
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

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res>? get firstPlayer {
    if (_value.firstPlayer == null) {
      return null;
    }

    return $PlayerCopyWith<$Res>(_value.firstPlayer!, (value) {
      return _then(_value.copyWith(firstPlayer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res>? get secondPlayer {
    if (_value.secondPlayer == null) {
      return null;
    }

    return $PlayerCopyWith<$Res>(_value.secondPlayer!, (value) {
      return _then(_value.copyWith(secondPlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchDetailsStateCopyWith<$Res>
    implements $MatchDetailsStateCopyWith<$Res> {
  factory _$$_MatchDetailsStateCopyWith(_$_MatchDetailsState value,
          $Res Function(_$_MatchDetailsState) then) =
      __$$_MatchDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Player? firstPlayer,
      Player? secondPlayer,
      StateStatus status,
      String errorMessage});

  @override
  $PlayerCopyWith<$Res>? get firstPlayer;
  @override
  $PlayerCopyWith<$Res>? get secondPlayer;
}

/// @nodoc
class __$$_MatchDetailsStateCopyWithImpl<$Res>
    extends _$MatchDetailsStateCopyWithImpl<$Res, _$_MatchDetailsState>
    implements _$$_MatchDetailsStateCopyWith<$Res> {
  __$$_MatchDetailsStateCopyWithImpl(
      _$_MatchDetailsState _value, $Res Function(_$_MatchDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstPlayer = freezed,
    Object? secondPlayer = freezed,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_MatchDetailsState(
      firstPlayer: freezed == firstPlayer
          ? _value.firstPlayer
          : firstPlayer // ignore: cast_nullable_to_non_nullable
              as Player?,
      secondPlayer: freezed == secondPlayer
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as Player?,
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

class _$_MatchDetailsState implements _MatchDetailsState {
  const _$_MatchDetailsState(
      {this.firstPlayer = null,
      this.secondPlayer = null,
      this.status = StateStatus.initial,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final Player? firstPlayer;
  @override
  @JsonKey()
  final Player? secondPlayer;
  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MatchDetailsState(firstPlayer: $firstPlayer, secondPlayer: $secondPlayer, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchDetailsState &&
            (identical(other.firstPlayer, firstPlayer) ||
                other.firstPlayer == firstPlayer) &&
            (identical(other.secondPlayer, secondPlayer) ||
                other.secondPlayer == secondPlayer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstPlayer, secondPlayer, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchDetailsStateCopyWith<_$_MatchDetailsState> get copyWith =>
      __$$_MatchDetailsStateCopyWithImpl<_$_MatchDetailsState>(
          this, _$identity);
}

abstract class _MatchDetailsState implements MatchDetailsState {
  const factory _MatchDetailsState(
      {final Player? firstPlayer,
      final Player? secondPlayer,
      final StateStatus status,
      final String errorMessage}) = _$_MatchDetailsState;

  @override
  Player? get firstPlayer;
  @override
  Player? get secondPlayer;
  @override
  StateStatus get status;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MatchDetailsStateCopyWith<_$_MatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
