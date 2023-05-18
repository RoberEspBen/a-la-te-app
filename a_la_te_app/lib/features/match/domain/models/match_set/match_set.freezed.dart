// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchSet _$MatchSetFromJson(Map<String, dynamic> json) {
  return _MatchSet.fromJson(json);
}

/// @nodoc
mixin _$MatchSet {
  int get firstPlayerGames => throw _privateConstructorUsedError;
  int get secondPlayerGames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchSetCopyWith<MatchSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchSetCopyWith<$Res> {
  factory $MatchSetCopyWith(MatchSet value, $Res Function(MatchSet) then) =
      _$MatchSetCopyWithImpl<$Res, MatchSet>;
  @useResult
  $Res call({int firstPlayerGames, int secondPlayerGames});
}

/// @nodoc
class _$MatchSetCopyWithImpl<$Res, $Val extends MatchSet>
    implements $MatchSetCopyWith<$Res> {
  _$MatchSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstPlayerGames = null,
    Object? secondPlayerGames = null,
  }) {
    return _then(_value.copyWith(
      firstPlayerGames: null == firstPlayerGames
          ? _value.firstPlayerGames
          : firstPlayerGames // ignore: cast_nullable_to_non_nullable
              as int,
      secondPlayerGames: null == secondPlayerGames
          ? _value.secondPlayerGames
          : secondPlayerGames // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchSetCopyWith<$Res> implements $MatchSetCopyWith<$Res> {
  factory _$$_MatchSetCopyWith(
          _$_MatchSet value, $Res Function(_$_MatchSet) then) =
      __$$_MatchSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int firstPlayerGames, int secondPlayerGames});
}

/// @nodoc
class __$$_MatchSetCopyWithImpl<$Res>
    extends _$MatchSetCopyWithImpl<$Res, _$_MatchSet>
    implements _$$_MatchSetCopyWith<$Res> {
  __$$_MatchSetCopyWithImpl(
      _$_MatchSet _value, $Res Function(_$_MatchSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstPlayerGames = null,
    Object? secondPlayerGames = null,
  }) {
    return _then(_$_MatchSet(
      firstPlayerGames: null == firstPlayerGames
          ? _value.firstPlayerGames
          : firstPlayerGames // ignore: cast_nullable_to_non_nullable
              as int,
      secondPlayerGames: null == secondPlayerGames
          ? _value.secondPlayerGames
          : secondPlayerGames // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchSet implements _MatchSet {
  const _$_MatchSet({this.firstPlayerGames = 0, this.secondPlayerGames = 0});

  factory _$_MatchSet.fromJson(Map<String, dynamic> json) =>
      _$$_MatchSetFromJson(json);

  @override
  @JsonKey()
  final int firstPlayerGames;
  @override
  @JsonKey()
  final int secondPlayerGames;

  @override
  String toString() {
    return 'MatchSet(firstPlayerGames: $firstPlayerGames, secondPlayerGames: $secondPlayerGames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchSet &&
            (identical(other.firstPlayerGames, firstPlayerGames) ||
                other.firstPlayerGames == firstPlayerGames) &&
            (identical(other.secondPlayerGames, secondPlayerGames) ||
                other.secondPlayerGames == secondPlayerGames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstPlayerGames, secondPlayerGames);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchSetCopyWith<_$_MatchSet> get copyWith =>
      __$$_MatchSetCopyWithImpl<_$_MatchSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetToJson(
      this,
    );
  }
}

abstract class _MatchSet implements MatchSet {
  const factory _MatchSet(
      {final int firstPlayerGames, final int secondPlayerGames}) = _$_MatchSet;

  factory _MatchSet.fromJson(Map<String, dynamic> json) = _$_MatchSet.fromJson;

  @override
  int get firstPlayerGames;
  @override
  int get secondPlayerGames;
  @override
  @JsonKey(ignore: true)
  _$$_MatchSetCopyWith<_$_MatchSet> get copyWith =>
      throw _privateConstructorUsedError;
}
