// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerProfileState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<MatchModel> get matchesPlayed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerProfileStateCopyWith<PlayerProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileStateCopyWith<$Res> {
  factory $PlayerProfileStateCopyWith(
          PlayerProfileState value, $Res Function(PlayerProfileState) then) =
      _$PlayerProfileStateCopyWithImpl<$Res, PlayerProfileState>;
  @useResult
  $Res call(
      {StateStatus status,
      List<MatchModel> matchesPlayed,
      String errorMessage});
}

/// @nodoc
class _$PlayerProfileStateCopyWithImpl<$Res, $Val extends PlayerProfileState>
    implements $PlayerProfileStateCopyWith<$Res> {
  _$PlayerProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? matchesPlayed = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      matchesPlayed: null == matchesPlayed
          ? _value.matchesPlayed
          : matchesPlayed // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerProfileStateCopyWith<$Res>
    implements $PlayerProfileStateCopyWith<$Res> {
  factory _$$_PlayerProfileStateCopyWith(_$_PlayerProfileState value,
          $Res Function(_$_PlayerProfileState) then) =
      __$$_PlayerProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      List<MatchModel> matchesPlayed,
      String errorMessage});
}

/// @nodoc
class __$$_PlayerProfileStateCopyWithImpl<$Res>
    extends _$PlayerProfileStateCopyWithImpl<$Res, _$_PlayerProfileState>
    implements _$$_PlayerProfileStateCopyWith<$Res> {
  __$$_PlayerProfileStateCopyWithImpl(
      _$_PlayerProfileState _value, $Res Function(_$_PlayerProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? matchesPlayed = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_PlayerProfileState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      matchesPlayed: null == matchesPlayed
          ? _value._matchesPlayed
          : matchesPlayed // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayerProfileState implements _PlayerProfileState {
  const _$_PlayerProfileState(
      {this.status = StateStatus.initial,
      final List<MatchModel> matchesPlayed = const [],
      this.errorMessage = ''})
      : _matchesPlayed = matchesPlayed;

  @override
  @JsonKey()
  final StateStatus status;
  final List<MatchModel> _matchesPlayed;
  @override
  @JsonKey()
  List<MatchModel> get matchesPlayed {
    if (_matchesPlayed is EqualUnmodifiableListView) return _matchesPlayed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchesPlayed);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'PlayerProfileState(status: $status, matchesPlayed: $matchesPlayed, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerProfileState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._matchesPlayed, _matchesPlayed) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_matchesPlayed), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerProfileStateCopyWith<_$_PlayerProfileState> get copyWith =>
      __$$_PlayerProfileStateCopyWithImpl<_$_PlayerProfileState>(
          this, _$identity);
}

abstract class _PlayerProfileState implements PlayerProfileState {
  const factory _PlayerProfileState(
      {final StateStatus status,
      final List<MatchModel> matchesPlayed,
      final String errorMessage}) = _$_PlayerProfileState;

  @override
  StateStatus get status;
  @override
  List<MatchModel> get matchesPlayed;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerProfileStateCopyWith<_$_PlayerProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
