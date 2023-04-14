// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Example _$ExampleFromJson(Map<String, dynamic> json) {
  return _Example.fromJson(json);
}

/// @nodoc
mixin _$Example {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleCopyWith<Example> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleCopyWith<$Res> {
  factory $ExampleCopyWith(Example value, $Res Function(Example) then) =
      _$ExampleCopyWithImpl<$Res, Example>;
  @useResult
  $Res call({String id, String title, String description});
}

/// @nodoc
class _$ExampleCopyWithImpl<$Res, $Val extends Example>
    implements $ExampleCopyWith<$Res> {
  _$ExampleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExampleCopyWith<$Res> implements $ExampleCopyWith<$Res> {
  factory _$$_ExampleCopyWith(
          _$_Example value, $Res Function(_$_Example) then) =
      __$$_ExampleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description});
}

/// @nodoc
class __$$_ExampleCopyWithImpl<$Res>
    extends _$ExampleCopyWithImpl<$Res, _$_Example>
    implements _$$_ExampleCopyWith<$Res> {
  __$$_ExampleCopyWithImpl(_$_Example _value, $Res Function(_$_Example) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_Example(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Example implements _Example {
  const _$_Example({required this.id, this.title = '', this.description = ''});

  factory _$_Example.fromJson(Map<String, dynamic> json) =>
      _$$_ExampleFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'Example(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Example &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExampleCopyWith<_$_Example> get copyWith =>
      __$$_ExampleCopyWithImpl<_$_Example>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExampleToJson(
      this,
    );
  }
}

abstract class _Example implements Example {
  const factory _Example(
      {required final String id,
      final String title,
      final String description}) = _$_Example;

  factory _Example.fromJson(Map<String, dynamic> json) = _$_Example.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ExampleCopyWith<_$_Example> get copyWith =>
      throw _privateConstructorUsedError;
}
