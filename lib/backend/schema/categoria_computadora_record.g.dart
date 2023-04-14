// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_computadora_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaComputadoraRecord> _$categoriaComputadoraRecordSerializer =
    new _$CategoriaComputadoraRecordSerializer();

class _$CategoriaComputadoraRecordSerializer
    implements StructuredSerializer<CategoriaComputadoraRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaComputadoraRecord,
    _$CategoriaComputadoraRecord
  ];
  @override
  final String wireName = 'CategoriaComputadoraRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaComputadoraRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoriaComputadora;
    if (value != null) {
      result
        ..add('CategoriaComputadora')
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
  CategoriaComputadoraRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaComputadoraRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CategoriaComputadora':
          result.categoriaComputadora = serializers.deserialize(value,
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

class _$CategoriaComputadoraRecord extends CategoriaComputadoraRecord {
  @override
  final String? categoriaComputadora;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaComputadoraRecord(
          [void Function(CategoriaComputadoraRecordBuilder)? updates]) =>
      (new CategoriaComputadoraRecordBuilder()..update(updates))._build();

  _$CategoriaComputadoraRecord._({this.categoriaComputadora, this.ffRef})
      : super._();

  @override
  CategoriaComputadoraRecord rebuild(
          void Function(CategoriaComputadoraRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaComputadoraRecordBuilder toBuilder() =>
      new CategoriaComputadoraRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaComputadoraRecord &&
        categoriaComputadora == other.categoriaComputadora &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoriaComputadora.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaComputadoraRecord')
          ..add('categoriaComputadora', categoriaComputadora)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaComputadoraRecordBuilder
    implements
        Builder<CategoriaComputadoraRecord, CategoriaComputadoraRecordBuilder> {
  _$CategoriaComputadoraRecord? _$v;

  String? _categoriaComputadora;
  String? get categoriaComputadora => _$this._categoriaComputadora;
  set categoriaComputadora(String? categoriaComputadora) =>
      _$this._categoriaComputadora = categoriaComputadora;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaComputadoraRecordBuilder() {
    CategoriaComputadoraRecord._initializeBuilder(this);
  }

  CategoriaComputadoraRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoriaComputadora = $v.categoriaComputadora;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaComputadoraRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaComputadoraRecord;
  }

  @override
  void update(void Function(CategoriaComputadoraRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaComputadoraRecord build() => _build();

  _$CategoriaComputadoraRecord _build() {
    final _$result = _$v ??
        new _$CategoriaComputadoraRecord._(
            categoriaComputadora: categoriaComputadora, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
