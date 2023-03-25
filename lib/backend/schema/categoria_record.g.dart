// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaRecord> _$categoriaRecordSerializer =
    new _$CategoriaRecordSerializer();

class _$CategoriaRecordSerializer
    implements StructuredSerializer<CategoriaRecord> {
  @override
  final Iterable<Type> types = const [CategoriaRecord, _$CategoriaRecord];
  @override
  final String wireName = 'CategoriaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoriaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nomCategoria;
    if (value != null) {
      result
        ..add('nomCategoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCategoria;
    if (value != null) {
      result
        ..add('idCategoria')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imagenCategoria;
    if (value != null) {
      result
        ..add('imagenCategoria')
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
  CategoriaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nomCategoria':
          result.nomCategoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idCategoria':
          result.idCategoria = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imagenCategoria':
          result.imagenCategoria = serializers.deserialize(value,
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

class _$CategoriaRecord extends CategoriaRecord {
  @override
  final String? nomCategoria;
  @override
  final int? idCategoria;
  @override
  final String? imagenCategoria;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaRecord([void Function(CategoriaRecordBuilder)? updates]) =>
      (new CategoriaRecordBuilder()..update(updates))._build();

  _$CategoriaRecord._(
      {this.nomCategoria, this.idCategoria, this.imagenCategoria, this.ffRef})
      : super._();

  @override
  CategoriaRecord rebuild(void Function(CategoriaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaRecordBuilder toBuilder() =>
      new CategoriaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaRecord &&
        nomCategoria == other.nomCategoria &&
        idCategoria == other.idCategoria &&
        imagenCategoria == other.imagenCategoria &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nomCategoria.hashCode);
    _$hash = $jc(_$hash, idCategoria.hashCode);
    _$hash = $jc(_$hash, imagenCategoria.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaRecord')
          ..add('nomCategoria', nomCategoria)
          ..add('idCategoria', idCategoria)
          ..add('imagenCategoria', imagenCategoria)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaRecordBuilder
    implements Builder<CategoriaRecord, CategoriaRecordBuilder> {
  _$CategoriaRecord? _$v;

  String? _nomCategoria;
  String? get nomCategoria => _$this._nomCategoria;
  set nomCategoria(String? nomCategoria) => _$this._nomCategoria = nomCategoria;

  int? _idCategoria;
  int? get idCategoria => _$this._idCategoria;
  set idCategoria(int? idCategoria) => _$this._idCategoria = idCategoria;

  String? _imagenCategoria;
  String? get imagenCategoria => _$this._imagenCategoria;
  set imagenCategoria(String? imagenCategoria) =>
      _$this._imagenCategoria = imagenCategoria;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaRecordBuilder() {
    CategoriaRecord._initializeBuilder(this);
  }

  CategoriaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomCategoria = $v.nomCategoria;
      _idCategoria = $v.idCategoria;
      _imagenCategoria = $v.imagenCategoria;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaRecord;
  }

  @override
  void update(void Function(CategoriaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaRecord build() => _build();

  _$CategoriaRecord _build() {
    final _$result = _$v ??
        new _$CategoriaRecord._(
            nomCategoria: nomCategoria,
            idCategoria: idCategoria,
            imagenCategoria: imagenCategoria,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
