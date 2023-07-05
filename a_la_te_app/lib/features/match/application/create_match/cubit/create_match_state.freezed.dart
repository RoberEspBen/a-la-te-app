// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_match_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateMatchState {
  DateTime? get matchDate => throw _privateConstructorUsedError;
  TimeOfDay? get matchInitialHour => throw _privateConstructorUsedError;
  TimeOfDay? get matchFinalHour => throw _privateConstructorUsedError;
  List<Club>? get clubs => throw _privateConstructorUsedError;
  Club? get selectedClub => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMatchStateCopyWith<CreateMatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMatchStateCopyWith<$Res> {
  factory $CreateMatchStateCopyWith(
          CreateMatchState value, $Res Function(CreateMatchState) then) =
      _$CreateMatchStateCopyWithImpl<$Res, CreateMatchState>;
  @useResult
  $Res call(
      {DateTime? matchDate,
      TimeOfDay? matchInitialHour,
      TimeOfDay? matchFinalHour,
      List<Club>? clubs,
      Club? selectedClub,
      StateStatus status,
      String errorMessage});

  $ClubCopyWith<$Res>? get selectedClub;
}

/// @nodoc
class _$CreateMatchStateCopyWithImpl<$Res, $Val extends CreateMatchState>
    implements $CreateMatchStateCopyWith<$Res> {
  _$CreateMatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchDate = freezed,
    Object? matchInitialHour = freezed,
    Object? matchFinalHour = freezed,
    Object? clubs = freezed,
    Object? selectedClub = freezed,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      matchDate: freezed == matchDate
          ? _value.matchDate
          : matchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      matchInitialHour: freezed == matchInitialHour
          ? _value.matchInitialHour
          : matchInitialHour // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      matchFinalHour: freezed == matchFinalHour
          ? _value.matchFinalHour
          : matchFinalHour // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      clubs: freezed == clubs
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<Club>?,
      selectedClub: freezed == selectedClub
          ? _value.selectedClub
          : selectedClub // ignore: cast_nullable_to_non_nullable
              as Club?,
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
  $ClubCopyWith<$Res>? get selectedClub {
    if (_value.selectedClub == null) {
      return null;
    }

    return $ClubCopyWith<$Res>(_value.selectedClub!, (value) {
      return _then(_value.copyWith(selectedClub: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateMatchStateCopyWith<$Res>
    implements $CreateMatchStateCopyWith<$Res> {
  factory _$$_CreateMatchStateCopyWith(
          _$_CreateMatchState value, $Res Function(_$_CreateMatchState) then) =
      __$$_CreateMatchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? matchDate,
      TimeOfDay? matchInitialHour,
      TimeOfDay? matchFinalHour,
      List<Club>? clubs,
      Club? selectedClub,
      StateStatus status,
      String errorMessage});

  @override
  $ClubCopyWith<$Res>? get selectedClub;
}

/// @nodoc
class __$$_CreateMatchStateCopyWithImpl<$Res>
    extends _$CreateMatchStateCopyWithImpl<$Res, _$_CreateMatchState>
    implements _$$_CreateMatchStateCopyWith<$Res> {
  __$$_CreateMatchStateCopyWithImpl(
      _$_CreateMatchState _value, $Res Function(_$_CreateMatchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchDate = freezed,
    Object? matchInitialHour = freezed,
    Object? matchFinalHour = freezed,
    Object? clubs = freezed,
    Object? selectedClub = freezed,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_CreateMatchState(
      matchDate: freezed == matchDate
          ? _value.matchDate
          : matchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      matchInitialHour: freezed == matchInitialHour
          ? _value.matchInitialHour
          : matchInitialHour // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      matchFinalHour: freezed == matchFinalHour
          ? _value.matchFinalHour
          : matchFinalHour // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      clubs: freezed == clubs
          ? _value._clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<Club>?,
      selectedClub: freezed == selectedClub
          ? _value.selectedClub
          : selectedClub // ignore: cast_nullable_to_non_nullable
              as Club?,
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

class _$_CreateMatchState implements _CreateMatchState {
  const _$_CreateMatchState(
      {this.matchDate = null,
      this.matchInitialHour = null,
      this.matchFinalHour = null,
      final List<Club>? clubs = const [],
      this.selectedClub = null,
      this.status = StateStatus.initial,
      this.errorMessage = ''})
      : _clubs = clubs;

  @override
  @JsonKey()
  final DateTime? matchDate;
  @override
  @JsonKey()
  final TimeOfDay? matchInitialHour;
  @override
  @JsonKey()
  final TimeOfDay? matchFinalHour;
  final List<Club>? _clubs;
  @override
  @JsonKey()
  List<Club>? get clubs {
    final value = _clubs;
    if (value == null) return null;
    if (_clubs is EqualUnmodifiableListView) return _clubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final Club? selectedClub;
  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CreateMatchState(matchDate: $matchDate, matchInitialHour: $matchInitialHour, matchFinalHour: $matchFinalHour, clubs: $clubs, selectedClub: $selectedClub, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMatchState &&
            (identical(other.matchDate, matchDate) ||
                other.matchDate == matchDate) &&
            (identical(other.matchInitialHour, matchInitialHour) ||
                other.matchInitialHour == matchInitialHour) &&
            (identical(other.matchFinalHour, matchFinalHour) ||
                other.matchFinalHour == matchFinalHour) &&
            const DeepCollectionEquality().equals(other._clubs, _clubs) &&
            (identical(other.selectedClub, selectedClub) ||
                other.selectedClub == selectedClub) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      matchDate,
      matchInitialHour,
      matchFinalHour,
      const DeepCollectionEquality().hash(_clubs),
      selectedClub,
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateMatchStateCopyWith<_$_CreateMatchState> get copyWith =>
      __$$_CreateMatchStateCopyWithImpl<_$_CreateMatchState>(this, _$identity);
}

abstract class _CreateMatchState implements CreateMatchState {
  const factory _CreateMatchState(
      {final DateTime? matchDate,
      final TimeOfDay? matchInitialHour,
      final TimeOfDay? matchFinalHour,
      final List<Club>? clubs,
      final Club? selectedClub,
      final StateStatus status,
      final String errorMessage}) = _$_CreateMatchState;

  @override
  DateTime? get matchDate;
  @override
  TimeOfDay? get matchInitialHour;
  @override
  TimeOfDay? get matchFinalHour;
  @override
  List<Club>? get clubs;
  @override
  Club? get selectedClub;
  @override
  StateStatus get status;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMatchStateCopyWith<_$_CreateMatchState> get copyWith =>
      throw _privateConstructorUsedError;
}
