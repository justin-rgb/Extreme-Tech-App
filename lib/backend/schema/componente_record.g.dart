// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'componente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComponenteRecord> _$componenteRecordSerializer =
    new _$ComponenteRecordSerializer();

class _$ComponenteRecordSerializer
    implements StructuredSerializer<ComponenteRecord> {
  @override
  final Iterable<Type> types = const [ComponenteRecord, _$ComponenteRecord];
  @override
  final String wireName = 'ComponenteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ComponenteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.precioComponente;
    if (value != null) {
      result
        ..add('PrecioComponente')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descripcionComponente;
    if (value != null) {
      result
        ..add('DescripcionComponente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidadComponente;
    if (value != null) {
      result
        ..add('CantidadComponente')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.marca;
    if (value != null) {
      result
        ..add('Marca')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.categoriaComponente;
    if (value != null) {
      result
        ..add('CategoriaComponente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imageComponente;
    if (value != null) {
      result
        ..add('ImageComponente')
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
  ComponenteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComponenteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PrecioComponente':
          result.precioComponente = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DescripcionComponente':
          result.descripcionComponente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CantidadComponente':
          result.cantidadComponente = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Marca':
          result.marca = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'CategoriaComponente':
          result.categoriaComponente = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ImageComponente':
          result.imageComponente = serializers.deserialize(value,
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

class _$ComponenteRecord extends ComponenteRecord {
  @override
  final int? precioComponente;
  @override
  final String? descripcionComponente;
  @override
  final int? cantidadComponente;
  @override
  final DocumentReference<Object?>? marca;
  @override
  final DocumentReference<Object?>? categoriaComponente;
  @override
  final String? imageComponente;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComponenteRecord(
          [void Function(ComponenteRecordBuilder)? updates]) =>
      (new ComponenteRecordBuilder()..update(updates))._build();

  _$ComponenteRecord._(
      {this.precioComponente,
      this.descripcionComponente,
      this.cantidadComponente,
      this.marca,
      this.categoriaComponente,
      this.imageComponente,
      this.ffRef})
      : super._();

  @override
  ComponenteRecord rebuild(void Function(ComponenteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComponenteRecordBuilder toBuilder() =>
      new ComponenteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComponenteRecord &&
        precioComponente == other.precioComponente &&
        descripcionComponente == other.descripcionComponente &&
        cantidadComponente == other.cantidadComponente &&
        marca == other.marca &&
        categoriaComponente == other.categoriaComponente &&
        imageComponente == other.imageComponente &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, precioComponente.hashCode);
    _$hash = $jc(_$hash, descripcionComponente.hashCode);
    _$hash = $jc(_$hash, cantidadComponente.hashCode);
    _$hash = $jc(_$hash, marca.hashCode);
    _$hash = $jc(_$hash, categoriaComponente.hashCode);
    _$hash = $jc(_$hash, imageComponente.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComponenteRecord')
          ..add('precioComponente', precioComponente)
          ..add('descripcionComponente', descripcionComponente)
          ..add('cantidadComponente', cantidadComponente)
          ..add('marca', marca)
          ..add('categoriaComponente', categoriaComponente)
          ..add('imageComponente', imageComponente)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComponenteRecordBuilder
    implements Builder<ComponenteRecord, ComponenteRecordBuilder> {
  _$ComponenteRecord? _$v;

  int? _precioComponente;
  int? get precioComponente => _$this._precioComponente;
  set precioComponente(int? precioComponente) =>
      _$this._precioComponente = precioComponente;

  String? _descripcionComponente;
  String? get descripcionComponente => _$this._descripcionComponente;
  set descripcionComponente(String? descripcionComponente) =>
      _$this._descripcionComponente = descripcionComponente;

  int? _cantidadComponente;
  int? get cantidadComponente => _$this._cantidadComponente;
  set cantidadComponente(int? cantidadComponente) =>
      _$this._cantidadComponente = cantidadComponente;

  DocumentReference<Object?>? _marca;
  DocumentReference<Object?>? get marca => _$this._marca;
  set marca(DocumentReference<Object?>? marca) => _$this._marca = marca;

  DocumentReference<Object?>? _categoriaComponente;
  DocumentReference<Object?>? get categoriaComponente =>
      _$this._categoriaComponente;
  set categoriaComponente(DocumentReference<Object?>? categoriaComponente) =>
      _$this._categoriaComponente = categoriaComponente;

  String? _imageComponente;
  String? get imageComponente => _$this._imageComponente;
  set imageComponente(String? imageComponente) =>
      _$this._imageComponente = imageComponente;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComponenteRecordBuilder() {
    ComponenteRecord._initializeBuilder(this);
  }

  ComponenteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _precioComponente = $v.precioComponente;
      _descripcionComponente = $v.descripcionComponente;
      _cantidadComponente = $v.cantidadComponente;
      _marca = $v.marca;
      _categoriaComponente = $v.categoriaComponente;
      _imageComponente = $v.imageComponente;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComponenteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComponenteRecord;
  }

  @override
  void update(void Function(ComponenteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComponenteRecord build() => _build();

  _$ComponenteRecord _build() {
    final _$result = _$v ??
        new _$ComponenteRecord._(
            precioComponente: precioComponente,
            descripcionComponente: descripcionComponente,
            cantidadComponente: cantidadComponente,
            marca: marca,
            categoriaComponente: categoriaComponente,
            imageComponente: imageComponente,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
