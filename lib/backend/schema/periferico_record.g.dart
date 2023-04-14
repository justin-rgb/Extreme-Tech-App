// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periferico_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PerifericoRecord> _$perifericoRecordSerializer =
    new _$PerifericoRecordSerializer();

class _$PerifericoRecordSerializer
    implements StructuredSerializer<PerifericoRecord> {
  @override
  final Iterable<Type> types = const [PerifericoRecord, _$PerifericoRecord];
  @override
  final String wireName = 'PerifericoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PerifericoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.precioPeriferico;
    if (value != null) {
      result
        ..add('PrecioPeriferico')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descripcionPeriferico;
    if (value != null) {
      result
        ..add('DescripcionPeriferico')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidaPeriferico;
    if (value != null) {
      result
        ..add('CantidaPeriferico')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoriaPeriferico;
    if (value != null) {
      result
        ..add('CategoriaPeriferico')
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
    value = object.imagePeriferico;
    if (value != null) {
      result
        ..add('ImagePeriferico')
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
  PerifericoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PerifericoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PrecioPeriferico':
          result.precioPeriferico = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DescripcionPeriferico':
          result.descripcionPeriferico = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CantidaPeriferico':
          result.cantidaPeriferico = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CategoriaPeriferico':
          result.categoriaPeriferico = serializers.deserialize(value,
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
        case 'ImagePeriferico':
          result.imagePeriferico = serializers.deserialize(value,
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

class _$PerifericoRecord extends PerifericoRecord {
  @override
  final int? precioPeriferico;
  @override
  final String? descripcionPeriferico;
  @override
  final int? cantidaPeriferico;
  @override
  final DocumentReference<Object?>? categoriaPeriferico;
  @override
  final DocumentReference<Object?>? marca;
  @override
  final String? imagePeriferico;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PerifericoRecord(
          [void Function(PerifericoRecordBuilder)? updates]) =>
      (new PerifericoRecordBuilder()..update(updates))._build();

  _$PerifericoRecord._(
      {this.precioPeriferico,
      this.descripcionPeriferico,
      this.cantidaPeriferico,
      this.categoriaPeriferico,
      this.marca,
      this.imagePeriferico,
      this.ffRef})
      : super._();

  @override
  PerifericoRecord rebuild(void Function(PerifericoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerifericoRecordBuilder toBuilder() =>
      new PerifericoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerifericoRecord &&
        precioPeriferico == other.precioPeriferico &&
        descripcionPeriferico == other.descripcionPeriferico &&
        cantidaPeriferico == other.cantidaPeriferico &&
        categoriaPeriferico == other.categoriaPeriferico &&
        marca == other.marca &&
        imagePeriferico == other.imagePeriferico &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, precioPeriferico.hashCode);
    _$hash = $jc(_$hash, descripcionPeriferico.hashCode);
    _$hash = $jc(_$hash, cantidaPeriferico.hashCode);
    _$hash = $jc(_$hash, categoriaPeriferico.hashCode);
    _$hash = $jc(_$hash, marca.hashCode);
    _$hash = $jc(_$hash, imagePeriferico.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerifericoRecord')
          ..add('precioPeriferico', precioPeriferico)
          ..add('descripcionPeriferico', descripcionPeriferico)
          ..add('cantidaPeriferico', cantidaPeriferico)
          ..add('categoriaPeriferico', categoriaPeriferico)
          ..add('marca', marca)
          ..add('imagePeriferico', imagePeriferico)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PerifericoRecordBuilder
    implements Builder<PerifericoRecord, PerifericoRecordBuilder> {
  _$PerifericoRecord? _$v;

  int? _precioPeriferico;
  int? get precioPeriferico => _$this._precioPeriferico;
  set precioPeriferico(int? precioPeriferico) =>
      _$this._precioPeriferico = precioPeriferico;

  String? _descripcionPeriferico;
  String? get descripcionPeriferico => _$this._descripcionPeriferico;
  set descripcionPeriferico(String? descripcionPeriferico) =>
      _$this._descripcionPeriferico = descripcionPeriferico;

  int? _cantidaPeriferico;
  int? get cantidaPeriferico => _$this._cantidaPeriferico;
  set cantidaPeriferico(int? cantidaPeriferico) =>
      _$this._cantidaPeriferico = cantidaPeriferico;

  DocumentReference<Object?>? _categoriaPeriferico;
  DocumentReference<Object?>? get categoriaPeriferico =>
      _$this._categoriaPeriferico;
  set categoriaPeriferico(DocumentReference<Object?>? categoriaPeriferico) =>
      _$this._categoriaPeriferico = categoriaPeriferico;

  DocumentReference<Object?>? _marca;
  DocumentReference<Object?>? get marca => _$this._marca;
  set marca(DocumentReference<Object?>? marca) => _$this._marca = marca;

  String? _imagePeriferico;
  String? get imagePeriferico => _$this._imagePeriferico;
  set imagePeriferico(String? imagePeriferico) =>
      _$this._imagePeriferico = imagePeriferico;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PerifericoRecordBuilder() {
    PerifericoRecord._initializeBuilder(this);
  }

  PerifericoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _precioPeriferico = $v.precioPeriferico;
      _descripcionPeriferico = $v.descripcionPeriferico;
      _cantidaPeriferico = $v.cantidaPeriferico;
      _categoriaPeriferico = $v.categoriaPeriferico;
      _marca = $v.marca;
      _imagePeriferico = $v.imagePeriferico;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerifericoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerifericoRecord;
  }

  @override
  void update(void Function(PerifericoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerifericoRecord build() => _build();

  _$PerifericoRecord _build() {
    final _$result = _$v ??
        new _$PerifericoRecord._(
            precioPeriferico: precioPeriferico,
            descripcionPeriferico: descripcionPeriferico,
            cantidaPeriferico: cantidaPeriferico,
            categoriaPeriferico: categoriaPeriferico,
            marca: marca,
            imagePeriferico: imagePeriferico,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
