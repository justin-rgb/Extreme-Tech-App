// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_periferico_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaPerifericoRecord> _$categoriaPerifericoRecordSerializer =
    new _$CategoriaPerifericoRecordSerializer();

class _$CategoriaPerifericoRecordSerializer
    implements StructuredSerializer<CategoriaPerifericoRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaPerifericoRecord,
    _$CategoriaPerifericoRecord
  ];
  @override
  final String wireName = 'CategoriaPerifericoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaPerifericoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoriaPeriferico;
    if (value != null) {
      result
        ..add('CategoriaPeriferico')
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
  CategoriaPerifericoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaPerifericoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CategoriaPeriferico':
          result.categoriaPeriferico = serializers.deserialize(value,
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

class _$CategoriaPerifericoRecord extends CategoriaPerifericoRecord {
  @override
  final String? categoriaPeriferico;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaPerifericoRecord(
          [void Function(CategoriaPerifericoRecordBuilder)? updates]) =>
      (new CategoriaPerifericoRecordBuilder()..update(updates))._build();

  _$CategoriaPerifericoRecord._({this.categoriaPeriferico, this.ffRef})
      : super._();

  @override
  CategoriaPerifericoRecord rebuild(
          void Function(CategoriaPerifericoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaPerifericoRecordBuilder toBuilder() =>
      new CategoriaPerifericoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaPerifericoRecord &&
        categoriaPeriferico == other.categoriaPeriferico &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoriaPeriferico.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaPerifericoRecord')
          ..add('categoriaPeriferico', categoriaPeriferico)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaPerifericoRecordBuilder
    implements
        Builder<CategoriaPerifericoRecord, CategoriaPerifericoRecordBuilder> {
  _$CategoriaPerifericoRecord? _$v;

  String? _categoriaPeriferico;
  String? get categoriaPeriferico => _$this._categoriaPeriferico;
  set categoriaPeriferico(String? categoriaPeriferico) =>
      _$this._categoriaPeriferico = categoriaPeriferico;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaPerifericoRecordBuilder() {
    CategoriaPerifericoRecord._initializeBuilder(this);
  }

  CategoriaPerifericoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoriaPeriferico = $v.categoriaPeriferico;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaPerifericoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaPerifericoRecord;
  }

  @override
  void update(void Function(CategoriaPerifericoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaPerifericoRecord build() => _build();

  _$CategoriaPerifericoRecord _build() {
    final _$result = _$v ??
        new _$CategoriaPerifericoRecord._(
            categoriaPeriferico: categoriaPeriferico, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
