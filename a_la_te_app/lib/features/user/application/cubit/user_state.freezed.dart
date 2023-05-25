// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  User get user => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  List<MatchModel> get matchesPlayed => throw _privateConstructorUsedError;
  List<MatchModel> get matchesCreated => throw _privateConstructorUsedError;
  List<MatchModel> get scheduledMatches => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {User user,
      StateStatus status,
      List<MatchModel> matchesPlayed,
      List<MatchModel> matchesCreated,
      List<MatchModel> scheduledMatches,
      String errorMessage});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
    Object? matchesPlayed = null,
    Object? matchesCreated = null,
    Object? scheduledMatches = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      matchesPlayed: null == matchesPlayed
          ? _value.matchesPlayed
          : matchesPlayed // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      matchesCreated: null == matchesCreated
          ? _value.matchesCreated
          : matchesCreated // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      scheduledMatches: null == scheduledMatches
          ? _value.scheduledMatches
          : scheduledMatches // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      StateStatus status,
      List<MatchModel> matchesPlayed,
      List<MatchModel> matchesCreated,
      List<MatchModel> scheduledMatches,
      String errorMessage});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
    Object? matchesPlayed = null,
    Object? matchesCreated = null,
    Object? scheduledMatches = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_UserState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      matchesPlayed: null == matchesPlayed
          ? _value._matchesPlayed
          : matchesPlayed // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      matchesCreated: null == matchesCreated
          ? _value._matchesCreated
          : matchesCreated // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      scheduledMatches: null == scheduledMatches
          ? _value._scheduledMatches
          : scheduledMatches // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {this.user = const User(id: 0),
      this.status = StateStatus.initial,
      final List<MatchModel> matchesPlayed = const [],
      final List<MatchModel> matchesCreated = const [],
      final List<MatchModel> scheduledMatches = const [],
      this.errorMessage = ''})
      : _matchesPlayed = matchesPlayed,
        _matchesCreated = matchesCreated,
        _scheduledMatches = scheduledMatches;

  @override
  @JsonKey()
  final User user;
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

  final List<MatchModel> _matchesCreated;
  @override
  @JsonKey()
  List<MatchModel> get matchesCreated {
    if (_matchesCreated is EqualUnmodifiableListView) return _matchesCreated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchesCreated);
  }

  final List<MatchModel> _scheduledMatches;
  @override
  @JsonKey()
  List<MatchModel> get scheduledMatches {
    if (_scheduledMatches is EqualUnmodifiableListView)
      return _scheduledMatches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledMatches);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'UserState(user: $user, status: $status, matchesPlayed: $matchesPlayed, matchesCreated: $matchesCreated, scheduledMatches: $scheduledMatches, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._matchesPlayed, _matchesPlayed) &&
            const DeepCollectionEquality()
                .equals(other._matchesCreated, _matchesCreated) &&
            const DeepCollectionEquality()
                .equals(other._scheduledMatches, _scheduledMatches) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      status,
      const DeepCollectionEquality().hash(_matchesPlayed),
      const DeepCollectionEquality().hash(_matchesCreated),
      const DeepCollectionEquality().hash(_scheduledMatches),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final User user,
      final StateStatus status,
      final List<MatchModel> matchesPlayed,
      final List<MatchModel> matchesCreated,
      final List<MatchModel> scheduledMatches,
      final String errorMessage}) = _$_UserState;

  @override
  User get user;
  @override
  StateStatus get status;
  @override
  List<MatchModel> get matchesPlayed;
  @override
  List<MatchModel> get matchesCreated;
  @override
  List<MatchModel> get scheduledMatches;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
