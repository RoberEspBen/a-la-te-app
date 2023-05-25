// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) {
  return _MatchModel.fromJson(json);
}

/// @nodoc
mixin _$MatchModel {
  String get id => throw _privateConstructorUsedError;
  MatchStatus get matchStatus => throw _privateConstructorUsedError;
  int get firstPlayerId => throw _privateConstructorUsedError;
  String get firstPlayerName => throw _privateConstructorUsedError;
  int get firstPlayerLevel => throw _privateConstructorUsedError;
  String? get firstPlayerPhoto => throw _privateConstructorUsedError;
  int? get secondPlayerId => throw _privateConstructorUsedError;
  String? get secondPlayerName => throw _privateConstructorUsedError;
  int? get secondPlayerLevel => throw _privateConstructorUsedError;
  String? get secondPlayerPhoto => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get clubAddress => throw _privateConstructorUsedError;
  String? get clubImage => throw _privateConstructorUsedError;
  DateTime? get matchDate => throw _privateConstructorUsedError;
  int get initialHour => throw _privateConstructorUsedError;
  int get finalHour => throw _privateConstructorUsedError;
  List<MatchSet>? get matchResult => throw _privateConstructorUsedError;
  int? get winningPlayerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchModelCopyWith<MatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchModelCopyWith<$Res> {
  factory $MatchModelCopyWith(
          MatchModel value, $Res Function(MatchModel) then) =
      _$MatchModelCopyWithImpl<$Res, MatchModel>;
  @useResult
  $Res call(
      {String id,
      MatchStatus matchStatus,
      int firstPlayerId,
      String firstPlayerName,
      int firstPlayerLevel,
      String? firstPlayerPhoto,
      int? secondPlayerId,
      String? secondPlayerName,
      int? secondPlayerLevel,
      String? secondPlayerPhoto,
      String clubName,
      String clubAddress,
      String? clubImage,
      DateTime? matchDate,
      int initialHour,
      int finalHour,
      List<MatchSet>? matchResult,
      int? winningPlayerId});
}

/// @nodoc
class _$MatchModelCopyWithImpl<$Res, $Val extends MatchModel>
    implements $MatchModelCopyWith<$Res> {
  _$MatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchStatus = null,
    Object? firstPlayerId = null,
    Object? firstPlayerName = null,
    Object? firstPlayerLevel = null,
    Object? firstPlayerPhoto = freezed,
    Object? secondPlayerId = freezed,
    Object? secondPlayerName = freezed,
    Object? secondPlayerLevel = freezed,
    Object? secondPlayerPhoto = freezed,
    Object? clubName = null,
    Object? clubAddress = null,
    Object? clubImage = freezed,
    Object? matchDate = freezed,
    Object? initialHour = null,
    Object? finalHour = null,
    Object? matchResult = freezed,
    Object? winningPlayerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
      firstPlayerId: null == firstPlayerId
          ? _value.firstPlayerId
          : firstPlayerId // ignore: cast_nullable_to_non_nullable
              as int,
      firstPlayerName: null == firstPlayerName
          ? _value.firstPlayerName
          : firstPlayerName // ignore: cast_nullable_to_non_nullable
              as String,
      firstPlayerLevel: null == firstPlayerLevel
          ? _value.firstPlayerLevel
          : firstPlayerLevel // ignore: cast_nullable_to_non_nullable
              as int,
      firstPlayerPhoto: freezed == firstPlayerPhoto
          ? _value.firstPlayerPhoto
          : firstPlayerPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      secondPlayerId: freezed == secondPlayerId
          ? _value.secondPlayerId
          : secondPlayerId // ignore: cast_nullable_to_non_nullable
              as int?,
      secondPlayerName: freezed == secondPlayerName
          ? _value.secondPlayerName
          : secondPlayerName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondPlayerLevel: freezed == secondPlayerLevel
          ? _value.secondPlayerLevel
          : secondPlayerLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      secondPlayerPhoto: freezed == secondPlayerPhoto
          ? _value.secondPlayerPhoto
          : secondPlayerPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      clubAddress: null == clubAddress
          ? _value.clubAddress
          : clubAddress // ignore: cast_nullable_to_non_nullable
              as String,
      clubImage: freezed == clubImage
          ? _value.clubImage
          : clubImage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchDate: freezed == matchDate
          ? _value.matchDate
          : matchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      initialHour: null == initialHour
          ? _value.initialHour
          : initialHour // ignore: cast_nullable_to_non_nullable
              as int,
      finalHour: null == finalHour
          ? _value.finalHour
          : finalHour // ignore: cast_nullable_to_non_nullable
              as int,
      matchResult: freezed == matchResult
          ? _value.matchResult
          : matchResult // ignore: cast_nullable_to_non_nullable
              as List<MatchSet>?,
      winningPlayerId: freezed == winningPlayerId
          ? _value.winningPlayerId
          : winningPlayerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchModelCopyWith<$Res>
    implements $MatchModelCopyWith<$Res> {
  factory _$$_MatchModelCopyWith(
          _$_MatchModel value, $Res Function(_$_MatchModel) then) =
      __$$_MatchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MatchStatus matchStatus,
      int firstPlayerId,
      String firstPlayerName,
      int firstPlayerLevel,
      String? firstPlayerPhoto,
      int? secondPlayerId,
      String? secondPlayerName,
      int? secondPlayerLevel,
      String? secondPlayerPhoto,
      String clubName,
      String clubAddress,
      String? clubImage,
      DateTime? matchDate,
      int initialHour,
      int finalHour,
      List<MatchSet>? matchResult,
      int? winningPlayerId});
}

/// @nodoc
class __$$_MatchModelCopyWithImpl<$Res>
    extends _$MatchModelCopyWithImpl<$Res, _$_MatchModel>
    implements _$$_MatchModelCopyWith<$Res> {
  __$$_MatchModelCopyWithImpl(
      _$_MatchModel _value, $Res Function(_$_MatchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchStatus = null,
    Object? firstPlayerId = null,
    Object? firstPlayerName = null,
    Object? firstPlayerLevel = null,
    Object? firstPlayerPhoto = freezed,
    Object? secondPlayerId = freezed,
    Object? secondPlayerName = freezed,
    Object? secondPlayerLevel = freezed,
    Object? secondPlayerPhoto = freezed,
    Object? clubName = null,
    Object? clubAddress = null,
    Object? clubImage = freezed,
    Object? matchDate = freezed,
    Object? initialHour = null,
    Object? finalHour = null,
    Object? matchResult = freezed,
    Object? winningPlayerId = freezed,
  }) {
    return _then(_$_MatchModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matchStatus: null == matchStatus
          ? _value.matchStatus
          : matchStatus // ignore: cast_nullable_to_non_nullable
              as MatchStatus,
      firstPlayerId: null == firstPlayerId
          ? _value.firstPlayerId
          : firstPlayerId // ignore: cast_nullable_to_non_nullable
              as int,
      firstPlayerName: null == firstPlayerName
          ? _value.firstPlayerName
          : firstPlayerName // ignore: cast_nullable_to_non_nullable
              as String,
      firstPlayerLevel: null == firstPlayerLevel
          ? _value.firstPlayerLevel
          : firstPlayerLevel // ignore: cast_nullable_to_non_nullable
              as int,
      firstPlayerPhoto: freezed == firstPlayerPhoto
          ? _value.firstPlayerPhoto
          : firstPlayerPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      secondPlayerId: freezed == secondPlayerId
          ? _value.secondPlayerId
          : secondPlayerId // ignore: cast_nullable_to_non_nullable
              as int?,
      secondPlayerName: freezed == secondPlayerName
          ? _value.secondPlayerName
          : secondPlayerName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondPlayerLevel: freezed == secondPlayerLevel
          ? _value.secondPlayerLevel
          : secondPlayerLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      secondPlayerPhoto: freezed == secondPlayerPhoto
          ? _value.secondPlayerPhoto
          : secondPlayerPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      clubAddress: null == clubAddress
          ? _value.clubAddress
          : clubAddress // ignore: cast_nullable_to_non_nullable
              as String,
      clubImage: freezed == clubImage
          ? _value.clubImage
          : clubImage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchDate: freezed == matchDate
          ? _value.matchDate
          : matchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      initialHour: null == initialHour
          ? _value.initialHour
          : initialHour // ignore: cast_nullable_to_non_nullable
              as int,
      finalHour: null == finalHour
          ? _value.finalHour
          : finalHour // ignore: cast_nullable_to_non_nullable
              as int,
      matchResult: freezed == matchResult
          ? _value._matchResult
          : matchResult // ignore: cast_nullable_to_non_nullable
              as List<MatchSet>?,
      winningPlayerId: freezed == winningPlayerId
          ? _value.winningPlayerId
          : winningPlayerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchModel implements _MatchModel {
  const _$_MatchModel(
      {required this.id,
      this.matchStatus = MatchStatus.matchCreated,
      this.firstPlayerId = 0,
      this.firstPlayerName = '',
      this.firstPlayerLevel = 0,
      this.firstPlayerPhoto = null,
      this.secondPlayerId = null,
      this.secondPlayerName = null,
      this.secondPlayerLevel = null,
      this.secondPlayerPhoto = null,
      this.clubName = '',
      this.clubAddress = '',
      this.clubImage = null,
      this.matchDate = null,
      this.initialHour = 0,
      this.finalHour = 0,
      final List<MatchSet>? matchResult = null,
      this.winningPlayerId = 0})
      : _matchResult = matchResult;

  factory _$_MatchModel.fromJson(Map<String, dynamic> json) =>
      _$$_MatchModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final MatchStatus matchStatus;
  @override
  @JsonKey()
  final int firstPlayerId;
  @override
  @JsonKey()
  final String firstPlayerName;
  @override
  @JsonKey()
  final int firstPlayerLevel;
  @override
  @JsonKey()
  final String? firstPlayerPhoto;
  @override
  @JsonKey()
  final int? secondPlayerId;
  @override
  @JsonKey()
  final String? secondPlayerName;
  @override
  @JsonKey()
  final int? secondPlayerLevel;
  @override
  @JsonKey()
  final String? secondPlayerPhoto;
  @override
  @JsonKey()
  final String clubName;
  @override
  @JsonKey()
  final String clubAddress;
  @override
  @JsonKey()
  final String? clubImage;
  @override
  @JsonKey()
  final DateTime? matchDate;
  @override
  @JsonKey()
  final int initialHour;
  @override
  @JsonKey()
  final int finalHour;
  final List<MatchSet>? _matchResult;
  @override
  @JsonKey()
  List<MatchSet>? get matchResult {
    final value = _matchResult;
    if (value == null) return null;
    if (_matchResult is EqualUnmodifiableListView) return _matchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? winningPlayerId;

  @override
  String toString() {
    return 'MatchModel(id: $id, matchStatus: $matchStatus, firstPlayerId: $firstPlayerId, firstPlayerName: $firstPlayerName, firstPlayerLevel: $firstPlayerLevel, firstPlayerPhoto: $firstPlayerPhoto, secondPlayerId: $secondPlayerId, secondPlayerName: $secondPlayerName, secondPlayerLevel: $secondPlayerLevel, secondPlayerPhoto: $secondPlayerPhoto, clubName: $clubName, clubAddress: $clubAddress, clubImage: $clubImage, matchDate: $matchDate, initialHour: $initialHour, finalHour: $finalHour, matchResult: $matchResult, winningPlayerId: $winningPlayerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matchStatus, matchStatus) ||
                other.matchStatus == matchStatus) &&
            (identical(other.firstPlayerId, firstPlayerId) ||
                other.firstPlayerId == firstPlayerId) &&
            (identical(other.firstPlayerName, firstPlayerName) ||
                other.firstPlayerName == firstPlayerName) &&
            (identical(other.firstPlayerLevel, firstPlayerLevel) ||
                other.firstPlayerLevel == firstPlayerLevel) &&
            (identical(other.firstPlayerPhoto, firstPlayerPhoto) ||
                other.firstPlayerPhoto == firstPlayerPhoto) &&
            (identical(other.secondPlayerId, secondPlayerId) ||
                other.secondPlayerId == secondPlayerId) &&
            (identical(other.secondPlayerName, secondPlayerName) ||
                other.secondPlayerName == secondPlayerName) &&
            (identical(other.secondPlayerLevel, secondPlayerLevel) ||
                other.secondPlayerLevel == secondPlayerLevel) &&
            (identical(other.secondPlayerPhoto, secondPlayerPhoto) ||
                other.secondPlayerPhoto == secondPlayerPhoto) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.clubAddress, clubAddress) ||
                other.clubAddress == clubAddress) &&
            (identical(other.clubImage, clubImage) ||
                other.clubImage == clubImage) &&
            (identical(other.matchDate, matchDate) ||
                other.matchDate == matchDate) &&
            (identical(other.initialHour, initialHour) ||
                other.initialHour == initialHour) &&
            (identical(other.finalHour, finalHour) ||
                other.finalHour == finalHour) &&
            const DeepCollectionEquality()
                .equals(other._matchResult, _matchResult) &&
            (identical(other.winningPlayerId, winningPlayerId) ||
                other.winningPlayerId == winningPlayerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      matchStatus,
      firstPlayerId,
      firstPlayerName,
      firstPlayerLevel,
      firstPlayerPhoto,
      secondPlayerId,
      secondPlayerName,
      secondPlayerLevel,
      secondPlayerPhoto,
      clubName,
      clubAddress,
      clubImage,
      matchDate,
      initialHour,
      finalHour,
      const DeepCollectionEquality().hash(_matchResult),
      winningPlayerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchModelCopyWith<_$_MatchModel> get copyWith =>
      __$$_MatchModelCopyWithImpl<_$_MatchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchModelToJson(
      this,
    );
  }
}

abstract class _MatchModel implements MatchModel {
  const factory _MatchModel(
      {required final String id,
      final MatchStatus matchStatus,
      final int firstPlayerId,
      final String firstPlayerName,
      final int firstPlayerLevel,
      final String? firstPlayerPhoto,
      final int? secondPlayerId,
      final String? secondPlayerName,
      final int? secondPlayerLevel,
      final String? secondPlayerPhoto,
      final String clubName,
      final String clubAddress,
      final String? clubImage,
      final DateTime? matchDate,
      final int initialHour,
      final int finalHour,
      final List<MatchSet>? matchResult,
      final int? winningPlayerId}) = _$_MatchModel;

  factory _MatchModel.fromJson(Map<String, dynamic> json) =
      _$_MatchModel.fromJson;

  @override
  String get id;
  @override
  MatchStatus get matchStatus;
  @override
  int get firstPlayerId;
  @override
  String get firstPlayerName;
  @override
  int get firstPlayerLevel;
  @override
  String? get firstPlayerPhoto;
  @override
  int? get secondPlayerId;
  @override
  String? get secondPlayerName;
  @override
  int? get secondPlayerLevel;
  @override
  String? get secondPlayerPhoto;
  @override
  String get clubName;
  @override
  String get clubAddress;
  @override
  String? get clubImage;
  @override
  DateTime? get matchDate;
  @override
  int get initialHour;
  @override
  int get finalHour;
  @override
  List<MatchSet>? get matchResult;
  @override
  int? get winningPlayerId;
  @override
  @JsonKey(ignore: true)
  _$$_MatchModelCopyWith<_$_MatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
