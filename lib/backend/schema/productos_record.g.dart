// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductosRecord> _$productosRecordSerializer =
    new _$ProductosRecordSerializer();

class _$ProductosRecordSerializer
    implements StructuredSerializer<ProductosRecord> {
  @override
  final Iterable<Type> types = const [ProductosRecord, _$ProductosRecord];
  @override
  final String wireName = 'ProductosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idProducto;
    if (value != null) {
      result
        ..add('idProducto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.modeloProducto;
    if (value != null) {
      result
        ..add('modeloProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.especProducto;
    if (value != null) {
      result
        ..add('especProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marcaProducto;
    if (value != null) {
      result
        ..add('marcaProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precioProducto;
    if (value != null) {
      result
        ..add('precioProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imagenProducto;
    if (value != null) {
      result
        ..add('imagenProducto')
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
  ProductosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'idProducto':
          result.idProducto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modeloProducto':
          result.modeloProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'especProducto':
          result.especProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'marcaProducto':
          result.marcaProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precioProducto':
          result.precioProducto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imagenProducto':
          result.imagenProducto = serializers.deserialize(value,
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

class _$ProductosRecord extends ProductosRecord {
  @override
  final int? idProducto;
  @override
  final String? modeloProducto;
  @override
  final String? especProducto;
  @override
  final String? marcaProducto;
  @override
  final double? precioProducto;
  @override
  final String? imagenProducto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductosRecord([void Function(ProductosRecordBuilder)? updates]) =>
      (new ProductosRecordBuilder()..update(updates))._build();

  _$ProductosRecord._(
      {this.idProducto,
      this.modeloProducto,
      this.especProducto,
      this.marcaProducto,
      this.precioProducto,
      this.imagenProducto,
      this.ffRef})
      : super._();

  @override
  ProductosRecord rebuild(void Function(ProductosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductosRecordBuilder toBuilder() =>
      new ProductosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductosRecord &&
        idProducto == other.idProducto &&
        modeloProducto == other.modeloProducto &&
        especProducto == other.especProducto &&
        marcaProducto == other.marcaProducto &&
        precioProducto == other.precioProducto &&
        imagenProducto == other.imagenProducto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idProducto.hashCode);
    _$hash = $jc(_$hash, modeloProducto.hashCode);
    _$hash = $jc(_$hash, especProducto.hashCode);
    _$hash = $jc(_$hash, marcaProducto.hashCode);
    _$hash = $jc(_$hash, precioProducto.hashCode);
    _$hash = $jc(_$hash, imagenProducto.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductosRecord')
          ..add('idProducto', idProducto)
          ..add('modeloProducto', modeloProducto)
          ..add('especProducto', especProducto)
          ..add('marcaProducto', marcaProducto)
          ..add('precioProducto', precioProducto)
          ..add('imagenProducto', imagenProducto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductosRecordBuilder
    implements Builder<ProductosRecord, ProductosRecordBuilder> {
  _$ProductosRecord? _$v;

  int? _idProducto;
  int? get idProducto => _$this._idProducto;
  set idProducto(int? idProducto) => _$this._idProducto = idProducto;

  String? _modeloProducto;
  String? get modeloProducto => _$this._modeloProducto;
  set modeloProducto(String? modeloProducto) =>
      _$this._modeloProducto = modeloProducto;

  String? _especProducto;
  String? get especProducto => _$this._especProducto;
  set especProducto(String? especProducto) =>
      _$this._especProducto = especProducto;

  String? _marcaProducto;
  String? get marcaProducto => _$this._marcaProducto;
  set marcaProducto(String? marcaProducto) =>
      _$this._marcaProducto = marcaProducto;

  double? _precioProducto;
  double? get precioProducto => _$this._precioProducto;
  set precioProducto(double? precioProducto) =>
      _$this._precioProducto = precioProducto;

  String? _imagenProducto;
  String? get imagenProducto => _$this._imagenProducto;
  set imagenProducto(String? imagenProducto) =>
      _$this._imagenProducto = imagenProducto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductosRecordBuilder() {
    ProductosRecord._initializeBuilder(this);
  }

  ProductosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idProducto = $v.idProducto;
      _modeloProducto = $v.modeloProducto;
      _especProducto = $v.especProducto;
      _marcaProducto = $v.marcaProducto;
      _precioProducto = $v.precioProducto;
      _imagenProducto = $v.imagenProducto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductosRecord;
  }

  @override
  void update(void Function(ProductosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductosRecord build() => _build();

  _$ProductosRecord _build() {
    final _$result = _$v ??
        new _$ProductosRecord._(
            idProducto: idProducto,
            modeloProducto: modeloProducto,
            especProducto: especProducto,
            marcaProducto: marcaProducto,
            precioProducto: precioProducto,
            imagenProducto: imagenProducto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
