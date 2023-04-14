import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'celular_record.g.dart';

abstract class CelularRecord
    implements Built<CelularRecord, CelularRecordBuilder> {
  static Serializer<CelularRecord> get serializer => _$celularRecordSerializer;

  @BuiltValueField(wireName: 'PrecioCelular')
  int? get precioCelular;

  @BuiltValueField(wireName: 'DescripcionCelular')
  String? get descripcionCelular;

  @BuiltValueField(wireName: 'CantidadCelular')
  int? get cantidadCelular;

  @BuiltValueField(wireName: 'CategoriaCelular')
  DocumentReference? get categoriaCelular;

  @BuiltValueField(wireName: 'Marca')
  DocumentReference? get marca;

  @BuiltValueField(wireName: 'ImageCelular')
  String? get imageCelular;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CelularRecordBuilder builder) => builder
    ..precioCelular = 0
    ..descripcionCelular = ''
    ..cantidadCelular = 0
    ..imageCelular = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Celular');

  static Stream<CelularRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CelularRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CelularRecord._();
  factory CelularRecord([void Function(CelularRecordBuilder) updates]) =
      _$CelularRecord;

  static CelularRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCelularRecordData({
  int? precioCelular,
  String? descripcionCelular,
  int? cantidadCelular,
  DocumentReference? categoriaCelular,
  DocumentReference? marca,
  String? imageCelular,
}) {
  final firestoreData = serializers.toFirestore(
    CelularRecord.serializer,
    CelularRecord(
      (c) => c
        ..precioCelular = precioCelular
        ..descripcionCelular = descripcionCelular
        ..cantidadCelular = cantidadCelular
        ..categoriaCelular = categoriaCelular
        ..marca = marca
        ..imageCelular = imageCelular,
    ),
  );

  return firestoreData;
}
