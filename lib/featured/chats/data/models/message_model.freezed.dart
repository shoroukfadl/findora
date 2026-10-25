// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageModel {

 String get id; String get chatId; String get senderId; MessageType get type; String get text; String? get imageUrl; String? get systemEvent; DateTime? get createdAt; List<String> get seenBy; String? get localId;
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageModelCopyWith<MessageModel> get copyWith => _$MessageModelCopyWithImpl<MessageModel>(this as MessageModel, _$identity);

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.text, text) || other.text == text)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.systemEvent, systemEvent) || other.systemEvent == systemEvent)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.seenBy, seenBy)&&(identical(other.localId, localId) || other.localId == localId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,type,text,imageUrl,systemEvent,createdAt,const DeepCollectionEquality().hash(seenBy),localId);

@override
String toString() {
  return 'MessageModel(id: $id, chatId: $chatId, senderId: $senderId, type: $type, text: $text, imageUrl: $imageUrl, systemEvent: $systemEvent, createdAt: $createdAt, seenBy: $seenBy, localId: $localId)';
}


}

/// @nodoc
abstract mixin class $MessageModelCopyWith<$Res>  {
  factory $MessageModelCopyWith(MessageModel value, $Res Function(MessageModel) _then) = _$MessageModelCopyWithImpl;
@useResult
$Res call({
 String id, String chatId, String senderId, MessageType type, String text, String? imageUrl, String? systemEvent, DateTime? createdAt, List<String> seenBy, String? localId
});




}
/// @nodoc
class _$MessageModelCopyWithImpl<$Res>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._self, this._then);

  final MessageModel _self;
  final $Res Function(MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? type = null,Object? text = null,Object? imageUrl = freezed,Object? systemEvent = freezed,Object? createdAt = freezed,Object? seenBy = null,Object? localId = freezed,}) {
  return _then(MessageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,systemEvent: freezed == systemEvent ? _self.systemEvent : systemEvent // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,seenBy: null == seenBy ? _self.seenBy : seenBy // ignore: cast_nullable_to_non_nullable
as List<String>,localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageModel].
extension MessageModelPatterns on MessageModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String chatId,  String senderId,  MessageType type,  String text,  String? imageUrl,  String? systemEvent,  DateTime? createdAt,  List<String> seenBy,  String? localId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.text,_that.imageUrl,_that.systemEvent,_that.createdAt,_that.seenBy,_that.localId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String chatId,  String senderId,  MessageType type,  String text,  String? imageUrl,  String? systemEvent,  DateTime? createdAt,  List<String> seenBy,  String? localId)  $default,) {final _that = this;
switch (_that) {
case _MessageModel():
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.text,_that.imageUrl,_that.systemEvent,_that.createdAt,_that.seenBy,_that.localId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String chatId,  String senderId,  MessageType type,  String text,  String? imageUrl,  String? systemEvent,  DateTime? createdAt,  List<String> seenBy,  String? localId)?  $default,) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.type,_that.text,_that.imageUrl,_that.systemEvent,_that.createdAt,_that.seenBy,_that.localId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageModel extends MessageModel {
  const _MessageModel({required this.id, required this.chatId, required this.senderId, this.type = MessageType.text, this.text = '', this.imageUrl, this.systemEvent, this.createdAt,  List<String> seenBy = const [], this.localId}): _seenBy = seenBy,super._();
  factory _MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

@override final  String id;
@override final  String chatId;
@override final  String senderId;
@override@JsonKey() final  MessageType type;
@override@JsonKey() final  String text;
@override final  String? imageUrl;
@override final  String? systemEvent;
@override final  DateTime? createdAt;
 final  List<String> _seenBy;
@override@JsonKey() List<String> get seenBy {
  if (_seenBy is EqualUnmodifiableListView) return _seenBy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seenBy);
}

@override final  String? localId;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageModelCopyWith<_MessageModel> get copyWith => __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.type, type) || other.type == type)&&(identical(other.text, text) || other.text == text)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.systemEvent, systemEvent) || other.systemEvent == systemEvent)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._seenBy, _seenBy)&&(identical(other.localId, localId) || other.localId == localId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,type,text,imageUrl,systemEvent,createdAt,const DeepCollectionEquality().hash(_seenBy),localId);

@override
String toString() {
  return 'MessageModel(id: $id, chatId: $chatId, senderId: $senderId, type: $type, text: $text, imageUrl: $imageUrl, systemEvent: $systemEvent, createdAt: $createdAt, seenBy: $seenBy, localId: $localId)';
}


}

/// @nodoc
abstract mixin class _$MessageModelCopyWith<$Res> implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(_MessageModel value, $Res Function(_MessageModel) _then) = __$MessageModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String chatId, String senderId, MessageType type, String text, String? imageUrl, String? systemEvent, DateTime? createdAt, List<String> seenBy, String? localId
});




}
/// @nodoc
class __$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(this._self, this._then);

  final _MessageModel _self;
  final $Res Function(_MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? type = null,Object? text = null,Object? imageUrl = freezed,Object? systemEvent = freezed,Object? createdAt = freezed,Object? seenBy = null,Object? localId = freezed,}) {
  return _then(_MessageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,systemEvent: freezed == systemEvent ? _self.systemEvent : systemEvent // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,seenBy: null == seenBy ? _self._seenBy : seenBy // ignore: cast_nullable_to_non_nullable
as List<String>,localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TypingEventModel {

 String get chatId; String get userId; bool get isTyping;
/// Create a copy of TypingEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypingEventModelCopyWith<TypingEventModel> get copyWith => _$TypingEventModelCopyWithImpl<TypingEventModel>(this as TypingEventModel, _$identity);

  /// Serializes this TypingEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingEventModel&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,userId,isTyping);

@override
String toString() {
  return 'TypingEventModel(chatId: $chatId, userId: $userId, isTyping: $isTyping)';
}


}

/// @nodoc
abstract mixin class $TypingEventModelCopyWith<$Res>  {
  factory $TypingEventModelCopyWith(TypingEventModel value, $Res Function(TypingEventModel) _then) = _$TypingEventModelCopyWithImpl;
@useResult
$Res call({
 String chatId, String userId, bool isTyping
});




}
/// @nodoc
class _$TypingEventModelCopyWithImpl<$Res>
    implements $TypingEventModelCopyWith<$Res> {
  _$TypingEventModelCopyWithImpl(this._self, this._then);

  final TypingEventModel _self;
  final $Res Function(TypingEventModel) _then;

/// Create a copy of TypingEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? userId = null,Object? isTyping = null,}) {
  return _then(TypingEventModel(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TypingEventModel].
extension TypingEventModelPatterns on TypingEventModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypingEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypingEventModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypingEventModel value)  $default,){
final _that = this;
switch (_that) {
case _TypingEventModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypingEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypingEventModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chatId,  String userId,  bool isTyping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypingEventModel() when $default != null:
return $default(_that.chatId,_that.userId,_that.isTyping);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chatId,  String userId,  bool isTyping)  $default,) {final _that = this;
switch (_that) {
case _TypingEventModel():
return $default(_that.chatId,_that.userId,_that.isTyping);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chatId,  String userId,  bool isTyping)?  $default,) {final _that = this;
switch (_that) {
case _TypingEventModel() when $default != null:
return $default(_that.chatId,_that.userId,_that.isTyping);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypingEventModel implements TypingEventModel {
  const _TypingEventModel({required this.chatId, required this.userId, required this.isTyping});
  factory _TypingEventModel.fromJson(Map<String, dynamic> json) => _$TypingEventModelFromJson(json);

@override final  String chatId;
@override final  String userId;
@override final  bool isTyping;

/// Create a copy of TypingEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypingEventModelCopyWith<_TypingEventModel> get copyWith => __$TypingEventModelCopyWithImpl<_TypingEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypingEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypingEventModel&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,userId,isTyping);

@override
String toString() {
  return 'TypingEventModel(chatId: $chatId, userId: $userId, isTyping: $isTyping)';
}


}

/// @nodoc
abstract mixin class _$TypingEventModelCopyWith<$Res> implements $TypingEventModelCopyWith<$Res> {
  factory _$TypingEventModelCopyWith(_TypingEventModel value, $Res Function(_TypingEventModel) _then) = __$TypingEventModelCopyWithImpl;
@override @useResult
$Res call({
 String chatId, String userId, bool isTyping
});




}
/// @nodoc
class __$TypingEventModelCopyWithImpl<$Res>
    implements _$TypingEventModelCopyWith<$Res> {
  __$TypingEventModelCopyWithImpl(this._self, this._then);

  final _TypingEventModel _self;
  final $Res Function(_TypingEventModel) _then;

/// Create a copy of TypingEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? userId = null,Object? isTyping = null,}) {
  return _then(_TypingEventModel(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReportStatusEventModel {

 String get reportId; ReportStatus get status;
/// Create a copy of ReportStatusEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportStatusEventModelCopyWith<ReportStatusEventModel> get copyWith => _$ReportStatusEventModelCopyWithImpl<ReportStatusEventModel>(this as ReportStatusEventModel, _$identity);

  /// Serializes this ReportStatusEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportStatusEventModel&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportId,status);

@override
String toString() {
  return 'ReportStatusEventModel(reportId: $reportId, status: $status)';
}


}

/// @nodoc
abstract mixin class $ReportStatusEventModelCopyWith<$Res>  {
  factory $ReportStatusEventModelCopyWith(ReportStatusEventModel value, $Res Function(ReportStatusEventModel) _then) = _$ReportStatusEventModelCopyWithImpl;
@useResult
$Res call({
 String reportId, ReportStatus status
});




}
/// @nodoc
class _$ReportStatusEventModelCopyWithImpl<$Res>
    implements $ReportStatusEventModelCopyWith<$Res> {
  _$ReportStatusEventModelCopyWithImpl(this._self, this._then);

  final ReportStatusEventModel _self;
  final $Res Function(ReportStatusEventModel) _then;

/// Create a copy of ReportStatusEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reportId = null,Object? status = null,}) {
  return _then(ReportStatusEventModel(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportStatusEventModel].
extension ReportStatusEventModelPatterns on ReportStatusEventModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportStatusEventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportStatusEventModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportStatusEventModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportStatusEventModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportStatusEventModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportStatusEventModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reportId,  ReportStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportStatusEventModel() when $default != null:
return $default(_that.reportId,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reportId,  ReportStatus status)  $default,) {final _that = this;
switch (_that) {
case _ReportStatusEventModel():
return $default(_that.reportId,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reportId,  ReportStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ReportStatusEventModel() when $default != null:
return $default(_that.reportId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportStatusEventModel implements ReportStatusEventModel {
  const _ReportStatusEventModel({required this.reportId, required this.status});
  factory _ReportStatusEventModel.fromJson(Map<String, dynamic> json) => _$ReportStatusEventModelFromJson(json);

@override final  String reportId;
@override final  ReportStatus status;

/// Create a copy of ReportStatusEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportStatusEventModelCopyWith<_ReportStatusEventModel> get copyWith => __$ReportStatusEventModelCopyWithImpl<_ReportStatusEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportStatusEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportStatusEventModel&&(identical(other.reportId, reportId) || other.reportId == reportId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reportId,status);

@override
String toString() {
  return 'ReportStatusEventModel(reportId: $reportId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ReportStatusEventModelCopyWith<$Res> implements $ReportStatusEventModelCopyWith<$Res> {
  factory _$ReportStatusEventModelCopyWith(_ReportStatusEventModel value, $Res Function(_ReportStatusEventModel) _then) = __$ReportStatusEventModelCopyWithImpl;
@override @useResult
$Res call({
 String reportId, ReportStatus status
});




}
/// @nodoc
class __$ReportStatusEventModelCopyWithImpl<$Res>
    implements _$ReportStatusEventModelCopyWith<$Res> {
  __$ReportStatusEventModelCopyWithImpl(this._self, this._then);

  final _ReportStatusEventModel _self;
  final $Res Function(_ReportStatusEventModel) _then;

/// Create a copy of ReportStatusEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reportId = null,Object? status = null,}) {
  return _then(_ReportStatusEventModel(
reportId: null == reportId ? _self.reportId : reportId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,
  ));
}


}

// dart format on
