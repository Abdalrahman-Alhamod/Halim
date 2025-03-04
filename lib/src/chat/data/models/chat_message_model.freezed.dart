// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get chatId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
          ChatMessageModel value, $Res Function(ChatMessageModel) then) =
      _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime? createdAt,
      @JsonKey(name: 'sender_id') int? senderId,
      String? content,
      String? id,
      String? chatId});
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? senderId = freezed,
    Object? content = freezed,
    Object? id = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(_$ChatMessageModelImpl value,
          $Res Function(_$ChatMessageModelImpl) then) =
      __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime? createdAt,
      @JsonKey(name: 'sender_id') int? senderId,
      String? content,
      String? id,
      String? chatId});
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(_$ChatMessageModelImpl _value,
      $Res Function(_$ChatMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? senderId = freezed,
    Object? content = freezed,
    Object? id = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_$ChatMessageModelImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl
    with DiagnosticableTreeMixin
    implements _ChatMessageModel {
  const _$ChatMessageModelImpl(
      {@JsonKey(
          name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
      this.createdAt,
      @JsonKey(name: 'sender_id') this.senderId,
      this.content,
      this.id,
      this.chatId});

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  final String? content;
  @override
  final String? id;
  @override
  final String? chatId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageModel(createdAt: $createdAt, senderId: $senderId, content: $content, id: $id, chatId: $chatId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageModel'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('chatId', chatId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, senderId, content, id, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageModel implements ChatMessageModel {
  const factory _ChatMessageModel(
      {@JsonKey(
          name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
      final DateTime? createdAt,
      @JsonKey(name: 'sender_id') final int? senderId,
      final String? content,
      final String? id,
      final String? chatId}) = _$ChatMessageModelImpl;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  String? get content;
  @override
  String? get id;
  @override
  String? get chatId;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
