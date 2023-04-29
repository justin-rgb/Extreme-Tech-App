// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_componente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriaComponenteRecord> _$categoriaComponenteRecordSerializer =
    new _$CategoriaComponenteRecordSerializer();

class _$CategoriaComponenteRecordSerializer
    implements StructuredSerializer<CategoriaComponenteRecord> {
  @override
  final Iterable<Type> types = const [
    CategoriaComponenteRecord,
    _$CategoriaComponenteRecord
  ];
  @override
  final String wireName = 'CategoriaComponenteRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CategoriaComponenteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoriaComponente;
    if (value != null) {
      result
        ..add('CategoriaComponente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iMGComponente;
    if (value != null) {
      result
        ..add('IMGComponente')
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
  CategoriaComponenteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriaComponenteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CategoriaComponente':
          result.categoriaComponente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IMGComponente':
          result.iMGComponente = serializers.deserialize(value,
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

class _$CategoriaComponenteRecord extends CategoriaComponenteRecord {
  @override
  final String? categoriaComponente;
  @override
  final String? iMGComponente;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoriaComponenteRecord(
          [void Function(CategoriaComponenteRecordBuilder)? updates]) =>
      (new CategoriaComponenteRecordBuilder()..update(updates))._build();

  _$CategoriaComponenteRecord._(
      {this.categoriaComponente, this.iMGComponente, this.ffRef})
      : super._();

  @override
  CategoriaComponenteRecord rebuild(
          void Function(CategoriaComponenteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriaComponenteRecordBuilder toBuilder() =>
      new CategoriaComponenteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriaComponenteRecord &&
        categoriaComponente == other.categoriaComponente &&
        iMGComponente == other.iMGComponente &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoriaComponente.hashCode);
    _$hash = $jc(_$hash, iMGComponente.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriaComponenteRecord')
          ..add('categoriaComponente', categoriaComponente)
          ..add('iMGComponente', iMGComponente)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoriaComponenteRecordBuilder
    implements
        Builder<CategoriaComponenteRecord, CategoriaComponenteRecordBuilder> {
  _$CategoriaComponenteRecord? _$v;

  String? _categoriaComponente;
  String? get categoriaComponente => _$this._categoriaComponente;
  set categoriaComponente(String? categoriaComponente) =>
      _$this._categoriaComponente = categoriaComponente;

  String? _iMGComponente;
  String? get iMGComponente => _$this._iMGComponente;
  set iMGComponente(String? iMGComponente) =>
      _$this._iMGComponente = iMGComponente;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoriaComponenteRecordBuilder() {
    CategoriaComponenteRecord._initializeBuilder(this);
  }

  CategoriaComponenteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoriaComponente = $v.categoriaComponente;
      _iMGComponente = $v.iMGComponente;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriaComponenteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriaComponenteRecord;
  }

  @override
  void update(void Function(CategoriaComponenteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriaComponenteRecord build() => _build();

  _$CategoriaComponenteRecord _build() {
    final _$result = _$v ??
        new _$CategoriaComponenteRecord._(
            categoriaComponente: categoriaComponente,
            iMGComponente: iMGComponente,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
