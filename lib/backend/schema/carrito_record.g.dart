// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarritoRecord> _$carritoRecordSerializer =
    new _$CarritoRecordSerializer();

class _$CarritoRecordSerializer implements StructuredSerializer<CarritoRecord> {
  @override
  final Iterable<Type> types = const [CarritoRecord, _$CarritoRecord];
  @override
  final String wireName = 'CarritoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('Cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('Imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('Precio')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CarritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CarritoRecord extends CarritoRecord {
  @override
  final String? descripcion;
  @override
  final int? cantidad;
  @override
  final String? imagen;
  @override
  final int? precio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarritoRecord([void Function(CarritoRecordBuilder)? updates]) =>
      (new CarritoRecordBuilder()..update(updates))._build();

  _$CarritoRecord._(
      {this.descripcion, this.cantidad, this.imagen, this.precio, this.ffRef})
      : super._();

  @override
  CarritoRecord rebuild(void Function(CarritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarritoRecordBuilder toBuilder() => new CarritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarritoRecord &&
        descripcion == other.descripcion &&
        cantidad == other.cantidad &&
        imagen == other.imagen &&
        precio == other.precio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, precio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarritoRecord')
          ..add('descripcion', descripcion)
          ..add('cantidad', cantidad)
          ..add('imagen', imagen)
          ..add('precio', precio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarritoRecordBuilder
    implements Builder<CarritoRecord, CarritoRecordBuilder> {
  _$CarritoRecord? _$v;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  int? _precio;
  int? get precio => _$this._precio;
  set precio(int? precio) => _$this._precio = precio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarritoRecordBuilder() {
    CarritoRecord._initializeBuilder(this);
  }

  CarritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descripcion = $v.descripcion;
      _cantidad = $v.cantidad;
      _imagen = $v.imagen;
      _precio = $v.precio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarritoRecord;
  }

  @override
  void update(void Function(CarritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarritoRecord build() => _build();

  _$CarritoRecord _build() {
    final _$result = _$v ??
        new _$CarritoRecord._(
            descripcion: descripcion,
            cantidad: cantidad,
            imagen: imagen,
            precio: precio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
