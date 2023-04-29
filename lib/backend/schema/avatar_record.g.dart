// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvatarRecord> _$avatarRecordSerializer =
    new _$AvatarRecordSerializer();

class _$AvatarRecordSerializer implements StructuredSerializer<AvatarRecord> {
  @override
  final Iterable<Type> types = const [AvatarRecord, _$AvatarRecord];
  @override
  final String wireName = 'AvatarRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AvatarRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.avatar1;
    if (value != null) {
      result
        ..add('avatar1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AvatarRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvatarRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'avatar1':
          result.avatar1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AvatarRecord extends AvatarRecord {
  @override
  final String? avatar1;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AvatarRecord([void Function(AvatarRecordBuilder)? updates]) =>
      (new AvatarRecordBuilder()..update(updates))._build();

  _$AvatarRecord._({this.avatar1, this.ffRef}) : super._();

  @override
  AvatarRecord rebuild(void Function(AvatarRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvatarRecordBuilder toBuilder() => new AvatarRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvatarRecord &&
        avatar1 == other.avatar1 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, avatar1.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvatarRecord')
          ..add('avatar1', avatar1)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AvatarRecordBuilder
    implements Builder<AvatarRecord, AvatarRecordBuilder> {
  _$AvatarRecord? _$v;

  String? _avatar1;
  String? get avatar1 => _$this._avatar1;
  set avatar1(String? avatar1) => _$this._avatar1 = avatar1;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AvatarRecordBuilder() {
    AvatarRecord._initializeBuilder(this);
  }

  AvatarRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _avatar1 = $v.avatar1;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvatarRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvatarRecord;
  }

  @override
  void update(void Function(AvatarRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvatarRecord build() => _build();

  _$AvatarRecord _build() {
    final _$result =
        _$v ?? new _$AvatarRecord._(avatar1: avatar1, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
