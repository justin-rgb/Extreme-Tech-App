// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celular_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CelularRecord> _$celularRecordSerializer =
    new _$CelularRecordSerializer();

class _$CelularRecordSerializer implements StructuredSerializer<CelularRecord> {
  @override
  final Iterable<Type> types = const [CelularRecord, _$CelularRecord];
  @override
  final String wireName = 'CelularRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CelularRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.precioCelular;
    if (value != null) {
      result
        ..add('PrecioCelular')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descripcionCelular;
    if (value != null) {
      result
        ..add('DescripcionCelular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidadCelular;
    if (value != null) {
      result
        ..add('CantidadCelular')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoriaCelular;
    if (value != null) {
      result
        ..add('CategoriaCelular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.marca;
    if (value != null) {
      result
        ..add('Marca')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imageCelular;
    if (value != null) {
      result
        ..add('ImageCelular')
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
  CelularRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CelularRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PrecioCelular':
          result.precioCelular = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DescripcionCelular':
          result.descripcionCelular = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CantidadCelular':
          result.cantidadCelular = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CategoriaCelular':
          result.categoriaCelular = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Marca':
          result.marca = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ImageCelular':
          result.imageCelular = serializers.deserialize(value,
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

class _$CelularRecord extends CelularRecord {
  @override
  final int? precioCelular;
  @override
  final String? descripcionCelular;
  @override
  final int? cantidadCelular;
  @override
  final DocumentReference<Object?>? categoriaCelular;
  @override
  final DocumentReference<Object?>? marca;
  @override
  final String? imageCelular;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CelularRecord([void Function(CelularRecordBuilder)? updates]) =>
      (new CelularRecordBuilder()..update(updates))._build();

  _$CelularRecord._(
      {this.precioCelular,
      this.descripcionCelular,
      this.cantidadCelular,
      this.categoriaCelular,
      this.marca,
      this.imageCelular,
      this.ffRef})
      : super._();

  @override
  CelularRecord rebuild(void Function(CelularRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CelularRecordBuilder toBuilder() => new CelularRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CelularRecord &&
        precioCelular == other.precioCelular &&
        descripcionCelular == other.descripcionCelular &&
        cantidadCelular == other.cantidadCelular &&
        categoriaCelular == other.categoriaCelular &&
        marca == other.marca &&
        imageCelular == other.imageCelular &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, precioCelular.hashCode);
    _$hash = $jc(_$hash, descripcionCelular.hashCode);
    _$hash = $jc(_$hash, cantidadCelular.hashCode);
    _$hash = $jc(_$hash, categoriaCelular.hashCode);
    _$hash = $jc(_$hash, marca.hashCode);
    _$hash = $jc(_$hash, imageCelular.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CelularRecord')
          ..add('precioCelular', precioCelular)
          ..add('descripcionCelular', descripcionCelular)
          ..add('cantidadCelular', cantidadCelular)
          ..add('categoriaCelular', categoriaCelular)
          ..add('marca', marca)
          ..add('imageCelular', imageCelular)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CelularRecordBuilder
    implements Builder<CelularRecord, CelularRecordBuilder> {
  _$CelularRecord? _$v;

  int? _precioCelular;
  int? get precioCelular => _$this._precioCelular;
  set precioCelular(int? precioCelular) =>
      _$this._precioCelular = precioCelular;

  String? _descripcionCelular;
  String? get descripcionCelular => _$this._descripcionCelular;
  set descripcionCelular(String? descripcionCelular) =>
      _$this._descripcionCelular = descripcionCelular;

  int? _cantidadCelular;
  int? get cantidadCelular => _$this._cantidadCelular;
  set cantidadCelular(int? cantidadCelular) =>
      _$this._cantidadCelular = cantidadCelular;

  DocumentReference<Object?>? _categoriaCelular;
  DocumentReference<Object?>? get categoriaCelular => _$this._categoriaCelular;
  set categoriaCelular(DocumentReference<Object?>? categoriaCelular) =>
      _$this._categoriaCelular = categoriaCelular;

  DocumentReference<Object?>? _marca;
  DocumentReference<Object?>? get marca => _$this._marca;
  set marca(DocumentReference<Object?>? marca) => _$this._marca = marca;

  String? _imageCelular;
  String? get imageCelular => _$this._imageCelular;
  set imageCelular(String? imageCelular) => _$this._imageCelular = imageCelular;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CelularRecordBuilder() {
    CelularRecord._initializeBuilder(this);
  }

  CelularRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _precioCelular = $v.precioCelular;
      _descripcionCelular = $v.descripcionCelular;
      _cantidadCelular = $v.cantidadCelular;
      _categoriaCelular = $v.categoriaCelular;
      _marca = $v.marca;
      _imageCelular = $v.imageCelular;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CelularRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CelularRecord;
  }

  @override
  void update(void Function(CelularRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CelularRecord build() => _build();

  _$CelularRecord _build() {
    final _$result = _$v ??
        new _$CelularRecord._(
            precioCelular: precioCelular,
            descripcionCelular: descripcionCelular,
            cantidadCelular: cantidadCelular,
            categoriaCelular: categoriaCelular,
            marca: marca,
            imageCelular: imageCelular,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
