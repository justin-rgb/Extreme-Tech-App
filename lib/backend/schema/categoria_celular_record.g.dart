// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_celular_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaCelularRecord> _$categoriaCelularRecordSerializer =
    new _$CategoriaCelularRecordSerializer();

class _$CategoriaCelularRecordSerializer
    implements StructuredSerializer<CategoriaCelularRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaCelularRecord,
    _$CategoriaCelularRecord
  ];
  @override
  final String wireName = 'CategoriaCelularRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaCelularRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoriaCelular;
    if (value != null) {
      result
        ..add('CategoriaCelular')
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
  CategoriaCelularRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaCelularRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CategoriaCelular':
          result.categoriaCelular = serializers.deserialize(value,
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

class _$CategoriaCelularRecord extends CategoriaCelularRecord {
  @override
  final String? categoriaCelular;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaCelularRecord(
          [void Function(CategoriaCelularRecordBuilder)? updates]) =>
      (new CategoriaCelularRecordBuilder()..update(updates))._build();

  _$CategoriaCelularRecord._({this.categoriaCelular, this.ffRef}) : super._();

  @override
  CategoriaCelularRecord rebuild(
          void Function(CategoriaCelularRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaCelularRecordBuilder toBuilder() =>
      new CategoriaCelularRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaCelularRecord &&
        categoriaCelular == other.categoriaCelular &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoriaCelular.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaCelularRecord')
          ..add('categoriaCelular', categoriaCelular)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaCelularRecordBuilder
    implements Builder<CategoriaCelularRecord, CategoriaCelularRecordBuilder> {
  _$CategoriaCelularRecord? _$v;

  String? _categoriaCelular;
  String? get categoriaCelular => _$this._categoriaCelular;
  set categoriaCelular(String? categoriaCelular) =>
      _$this._categoriaCelular = categoriaCelular;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaCelularRecordBuilder() {
    CategoriaCelularRecord._initializeBuilder(this);
  }

  CategoriaCelularRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoriaCelular = $v.categoriaCelular;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaCelularRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaCelularRecord;
  }

  @override
  void update(void Function(CategoriaCelularRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaCelularRecord build() => _build();

  _$CategoriaCelularRecord _build() {
    final _$result = _$v ??
        new _$CategoriaCelularRecord._(
            categoriaCelular: categoriaCelular, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
