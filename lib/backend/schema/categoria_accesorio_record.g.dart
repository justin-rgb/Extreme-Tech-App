// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_accesorio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaAccesorioRecord> _$categoriaAccesorioRecordSerializer =
    new _$CategoriaAccesorioRecordSerializer();

class _$CategoriaAccesorioRecordSerializer
    implements StructuredSerializer<CategoriaAccesorioRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaAccesorioRecord,
    _$CategoriaAccesorioRecord
  ];
  @override
  final String wireName = 'CategoriaAccesorioRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaAccesorioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoriaAccesorio;
    if (value != null) {
      result
        ..add('CategoriaAccesorio')
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
  CategoriaAccesorioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaAccesorioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CategoriaAccesorio':
          result.categoriaAccesorio = serializers.deserialize(value,
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

class _$CategoriaAccesorioRecord extends CategoriaAccesorioRecord {
  @override
  final String? categoriaAccesorio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaAccesorioRecord(
          [void Function(CategoriaAccesorioRecordBuilder)? updates]) =>
      (new CategoriaAccesorioRecordBuilder()..update(updates))._build();

  _$CategoriaAccesorioRecord._({this.categoriaAccesorio, this.ffRef})
      : super._();

  @override
  CategoriaAccesorioRecord rebuild(
          void Function(CategoriaAccesorioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaAccesorioRecordBuilder toBuilder() =>
      new CategoriaAccesorioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaAccesorioRecord &&
        categoriaAccesorio == other.categoriaAccesorio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoriaAccesorio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaAccesorioRecord')
          ..add('categoriaAccesorio', categoriaAccesorio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaAccesorioRecordBuilder
    implements
        Builder<CategoriaAccesorioRecord, CategoriaAccesorioRecordBuilder> {
  _$CategoriaAccesorioRecord? _$v;

  String? _categoriaAccesorio;
  String? get categoriaAccesorio => _$this._categoriaAccesorio;
  set categoriaAccesorio(String? categoriaAccesorio) =>
      _$this._categoriaAccesorio = categoriaAccesorio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaAccesorioRecordBuilder() {
    CategoriaAccesorioRecord._initializeBuilder(this);
  }

  CategoriaAccesorioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoriaAccesorio = $v.categoriaAccesorio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaAccesorioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaAccesorioRecord;
  }

  @override
  void update(void Function(CategoriaAccesorioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaAccesorioRecord build() => _build();

  _$CategoriaAccesorioRecord _build() {
    final _$result = _$v ??
        new _$CategoriaAccesorioRecord._(
            categoriaAccesorio: categoriaAccesorio, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
