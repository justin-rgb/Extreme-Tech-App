// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computadora_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComputadoraRecord> _$computadoraRecordSerializer =
    new _$ComputadoraRecordSerializer();

class _$ComputadoraRecordSerializer
    implements StructuredSerializer<ComputadoraRecord> {
  @override
  final Iterable<Type> types = const [ComputadoraRecord, _$ComputadoraRecord];
  @override
  final String wireName = 'ComputadoraRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ComputadoraRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.precioComputadora;
    if (value != null) {
      result
        ..add('PrecioComputadora')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidadComputadora;
    if (value != null) {
      result
        ..add('CantidadComputadora')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoriaComputadora;
    if (value != null) {
      result
        ..add('CategoriaComputadora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imageComputadora;
    if (value != null) {
      result
        ..add('ImageComputadora')
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
  ComputadoraRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComputadoraRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PrecioComputadora':
          result.precioComputadora = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CantidadComputadora':
          result.cantidadComputadora = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CategoriaComputadora':
          result.categoriaComputadora = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ImageComputadora':
          result.imageComputadora = serializers.deserialize(value,
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

class _$ComputadoraRecord extends ComputadoraRecord {
  @override
  final int? precioComputadora;
  @override
  final String? descripcion;
  @override
  final int? cantidadComputadora;
  @override
  final DocumentReference<Object?>? categoriaComputadora;
  @override
  final String? imageComputadora;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComputadoraRecord(
          [void Function(ComputadoraRecordBuilder)? updates]) =>
      (new ComputadoraRecordBuilder()..update(updates))._build();

  _$ComputadoraRecord._(
      {this.precioComputadora,
      this.descripcion,
      this.cantidadComputadora,
      this.categoriaComputadora,
      this.imageComputadora,
      this.ffRef})
      : super._();

  @override
  ComputadoraRecord rebuild(void Function(ComputadoraRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComputadoraRecordBuilder toBuilder() =>
      new ComputadoraRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComputadoraRecord &&
        precioComputadora == other.precioComputadora &&
        descripcion == other.descripcion &&
        cantidadComputadora == other.cantidadComputadora &&
        categoriaComputadora == other.categoriaComputadora &&
        imageComputadora == other.imageComputadora &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, precioComputadora.hashCode);
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, cantidadComputadora.hashCode);
    _$hash = $jc(_$hash, categoriaComputadora.hashCode);
    _$hash = $jc(_$hash, imageComputadora.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComputadoraRecord')
          ..add('precioComputadora', precioComputadora)
          ..add('descripcion', descripcion)
          ..add('cantidadComputadora', cantidadComputadora)
          ..add('categoriaComputadora', categoriaComputadora)
          ..add('imageComputadora', imageComputadora)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComputadoraRecordBuilder
    implements Builder<ComputadoraRecord, ComputadoraRecordBuilder> {
  _$ComputadoraRecord? _$v;

  int? _precioComputadora;
  int? get precioComputadora => _$this._precioComputadora;
  set precioComputadora(int? precioComputadora) =>
      _$this._precioComputadora = precioComputadora;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  int? _cantidadComputadora;
  int? get cantidadComputadora => _$this._cantidadComputadora;
  set cantidadComputadora(int? cantidadComputadora) =>
      _$this._cantidadComputadora = cantidadComputadora;

  DocumentReference<Object?>? _categoriaComputadora;
  DocumentReference<Object?>? get categoriaComputadora =>
      _$this._categoriaComputadora;
  set categoriaComputadora(DocumentReference<Object?>? categoriaComputadora) =>
      _$this._categoriaComputadora = categoriaComputadora;

  String? _imageComputadora;
  String? get imageComputadora => _$this._imageComputadora;
  set imageComputadora(String? imageComputadora) =>
      _$this._imageComputadora = imageComputadora;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComputadoraRecordBuilder() {
    ComputadoraRecord._initializeBuilder(this);
  }

  ComputadoraRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _precioComputadora = $v.precioComputadora;
      _descripcion = $v.descripcion;
      _cantidadComputadora = $v.cantidadComputadora;
      _categoriaComputadora = $v.categoriaComputadora;
      _imageComputadora = $v.imageComputadora;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComputadoraRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComputadoraRecord;
  }

  @override
  void update(void Function(ComputadoraRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComputadoraRecord build() => _build();

  _$ComputadoraRecord _build() {
    final _$result = _$v ??
        new _$ComputadoraRecord._(
            precioComputadora: precioComputadora,
            descripcion: descripcion,
            cantidadComputadora: cantidadComputadora,
            categoriaComputadora: categoriaComputadora,
            imageComputadora: imageComputadora,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
