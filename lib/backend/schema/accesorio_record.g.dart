// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accesorio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccesorioRecord> _$accesorioRecordSerializer =
    new _$AccesorioRecordSerializer();

class _$AccesorioRecordSerializer
    implements StructuredSerializer<AccesorioRecord> {
  @override
  final Iterable<Type> types = const [AccesorioRecord, _$AccesorioRecord];
  @override
  final String wireName = 'AccesorioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AccesorioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.precioAccesorio;
    if (value != null) {
      result
        ..add('PrecioAccesorio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descripcionAccesorio;
    if (value != null) {
      result
        ..add('DescripcionAccesorio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidadAccesorio;
    if (value != null) {
      result
        ..add('CantidadAccesorio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoriaAccesorio;
    if (value != null) {
      result
        ..add('CategoriaAccesorio')
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
    value = object.imageAccesorio;
    if (value != null) {
      result
        ..add('ImageAccesorio')
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
  AccesorioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccesorioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PrecioAccesorio':
          result.precioAccesorio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DescripcionAccesorio':
          result.descripcionAccesorio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CantidadAccesorio':
          result.cantidadAccesorio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CategoriaAccesorio':
          result.categoriaAccesorio = serializers.deserialize(value,
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
        case 'ImageAccesorio':
          result.imageAccesorio = serializers.deserialize(value,
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

class _$AccesorioRecord extends AccesorioRecord {
  @override
  final int? precioAccesorio;
  @override
  final String? descripcionAccesorio;
  @override
  final int? cantidadAccesorio;
  @override
  final DocumentReference<Object?>? categoriaAccesorio;
  @override
  final DocumentReference<Object?>? marca;
  @override
  final String? imageAccesorio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AccesorioRecord([void Function(AccesorioRecordBuilder)? updates]) =>
      (new AccesorioRecordBuilder()..update(updates))._build();

  _$AccesorioRecord._(
      {this.precioAccesorio,
      this.descripcionAccesorio,
      this.cantidadAccesorio,
      this.categoriaAccesorio,
      this.marca,
      this.imageAccesorio,
      this.ffRef})
      : super._();

  @override
  AccesorioRecord rebuild(void Function(AccesorioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccesorioRecordBuilder toBuilder() =>
      new AccesorioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccesorioRecord &&
        precioAccesorio == other.precioAccesorio &&
        descripcionAccesorio == other.descripcionAccesorio &&
        cantidadAccesorio == other.cantidadAccesorio &&
        categoriaAccesorio == other.categoriaAccesorio &&
        marca == other.marca &&
        imageAccesorio == other.imageAccesorio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, precioAccesorio.hashCode);
    _$hash = $jc(_$hash, descripcionAccesorio.hashCode);
    _$hash = $jc(_$hash, cantidadAccesorio.hashCode);
    _$hash = $jc(_$hash, categoriaAccesorio.hashCode);
    _$hash = $jc(_$hash, marca.hashCode);
    _$hash = $jc(_$hash, imageAccesorio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccesorioRecord')
          ..add('precioAccesorio', precioAccesorio)
          ..add('descripcionAccesorio', descripcionAccesorio)
          ..add('cantidadAccesorio', cantidadAccesorio)
          ..add('categoriaAccesorio', categoriaAccesorio)
          ..add('marca', marca)
          ..add('imageAccesorio', imageAccesorio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AccesorioRecordBuilder
    implements Builder<AccesorioRecord, AccesorioRecordBuilder> {
  _$AccesorioRecord? _$v;

  int? _precioAccesorio;
  int? get precioAccesorio => _$this._precioAccesorio;
  set precioAccesorio(int? precioAccesorio) =>
      _$this._precioAccesorio = precioAccesorio;

  String? _descripcionAccesorio;
  String? get descripcionAccesorio => _$this._descripcionAccesorio;
  set descripcionAccesorio(String? descripcionAccesorio) =>
      _$this._descripcionAccesorio = descripcionAccesorio;

  int? _cantidadAccesorio;
  int? get cantidadAccesorio => _$this._cantidadAccesorio;
  set cantidadAccesorio(int? cantidadAccesorio) =>
      _$this._cantidadAccesorio = cantidadAccesorio;

  DocumentReference<Object?>? _categoriaAccesorio;
  DocumentReference<Object?>? get categoriaAccesorio =>
      _$this._categoriaAccesorio;
  set categoriaAccesorio(DocumentReference<Object?>? categoriaAccesorio) =>
      _$this._categoriaAccesorio = categoriaAccesorio;

  DocumentReference<Object?>? _marca;
  DocumentReference<Object?>? get marca => _$this._marca;
  set marca(DocumentReference<Object?>? marca) => _$this._marca = marca;

  String? _imageAccesorio;
  String? get imageAccesorio => _$this._imageAccesorio;
  set imageAccesorio(String? imageAccesorio) =>
      _$this._imageAccesorio = imageAccesorio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AccesorioRecordBuilder() {
    AccesorioRecord._initializeBuilder(this);
  }

  AccesorioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _precioAccesorio = $v.precioAccesorio;
      _descripcionAccesorio = $v.descripcionAccesorio;
      _cantidadAccesorio = $v.cantidadAccesorio;
      _categoriaAccesorio = $v.categoriaAccesorio;
      _marca = $v.marca;
      _imageAccesorio = $v.imageAccesorio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccesorioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccesorioRecord;
  }

  @override
  void update(void Function(AccesorioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccesorioRecord build() => _build();

  _$AccesorioRecord _build() {
    final _$result = _$v ??
        new _$AccesorioRecord._(
            precioAccesorio: precioAccesorio,
            descripcionAccesorio: descripcionAccesorio,
            cantidadAccesorio: cantidadAccesorio,
            categoriaAccesorio: categoriaAccesorio,
            marca: marca,
            imageAccesorio: imageAccesorio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
