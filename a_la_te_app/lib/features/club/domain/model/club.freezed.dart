// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Club _$ClubFromJson(Map<String, dynamic> json) {
  return _Club.fromJson(json);
}

/// @nodoc
mixin _$Club {
  String get id => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get clubAddress => throw _privateConstructorUsedError;
  String? get clubImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubCopyWith<Club> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCopyWith<$Res> {
  factory $ClubCopyWith(Club value, $Res Function(Club) then) =
      _$ClubCopyWithImpl<$Res, Club>;
  @useResult
  $Res call(
      {String id, String clubName, String clubAddress, String? clubImage});
}

/// @nodoc
class _$ClubCopyWithImpl<$Res, $Val extends Club>
    implements $ClubCopyWith<$Res> {
  _$ClubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubName = null,
    Object? clubAddress = null,
    Object? clubImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubCopyWith<$Res> implements $ClubCopyWith<$Res> {
  factory _$$_ClubCopyWith(_$_Club value, $Res Function(_$_Club) then) =
      __$$_ClubCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String clubName, String clubAddress, String? clubImage});
}

/// @nodoc
class __$$_ClubCopyWithImpl<$Res> extends _$ClubCopyWithImpl<$Res, _$_Club>
    implements _$$_ClubCopyWith<$Res> {
  __$$_ClubCopyWithImpl(_$_Club _value, $Res Function(_$_Club) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubName = null,
    Object? clubAddress = null,
    Object? clubImage = freezed,
  }) {
    return _then(_$_Club(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Club implements _Club {
  const _$_Club(
      {required this.id,
      this.clubName = '',
      this.clubAddress = '',
      this.clubImage = null});

  factory _$_Club.fromJson(Map<String, dynamic> json) => _$$_ClubFromJson(json);

  @override
  final String id;
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
  String toString() {
    return 'Club(id: $id, clubName: $clubName, clubAddress: $clubAddress, clubImage: $clubImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Club &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.clubAddress, clubAddress) ||
                other.clubAddress == clubAddress) &&
            (identical(other.clubImage, clubImage) ||
                other.clubImage == clubImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, clubName, clubAddress, clubImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubCopyWith<_$_Club> get copyWith =>
      __$$_ClubCopyWithImpl<_$_Club>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubToJson(
      this,
    );
  }
}

abstract class _Club implements Club {
  const factory _Club(
      {required final String id,
      final String clubName,
      final String clubAddress,
      final String? clubImage}) = _$_Club;

  factory _Club.fromJson(Map<String, dynamic> json) = _$_Club.fromJson;

  @override
  String get id;
  @override
  String get clubName;
  @override
  String get clubAddress;
  @override
  String? get clubImage;
  @override
  @JsonKey(ignore: true)
  _$$_ClubCopyWith<_$_Club> get copyWith => throw _privateConstructorUsedError;
}
