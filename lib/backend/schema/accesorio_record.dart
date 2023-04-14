import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'accesorio_record.g.dart';

abstract class AccesorioRecord
    implements Built<AccesorioRecord, AccesorioRecordBuilder> {
  static Serializer<AccesorioRecord> get serializer =>
      _$accesorioRecordSerializer;

  @BuiltValueField(wireName: 'PrecioAccesorio')
  int? get precioAccesorio;

  @BuiltValueField(wireName: 'DescripcionAccesorio')
  String? get descripcionAccesorio;

  @BuiltValueField(wireName: 'CantidadAccesorio')
  int? get cantidadAccesorio;

  @BuiltValueField(wireName: 'CategoriaAccesorio')
  DocumentReference? get categoriaAccesorio;

  @BuiltValueField(wireName: 'Marca')
  DocumentReference? get marca;

  @BuiltValueField(wireName: 'ImageAccesorio')
  String? get imageAccesorio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AccesorioRecordBuilder builder) => builder
    ..precioAccesorio = 0
    ..descripcionAccesorio = ''
    ..cantidadAccesorio = 0
    ..imageAccesorio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Accesorio');

  static Stream<AccesorioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AccesorioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AccesorioRecord._();
  factory AccesorioRecord([void Function(AccesorioRecordBuilder) updates]) =
      _$AccesorioRecord;

  static AccesorioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAccesorioRecordData({
  int? precioAccesorio,
  String? descripcionAccesorio,
  int? cantidadAccesorio,
  DocumentReference? categoriaAccesorio,
  DocumentReference? marca,
  String? imageAccesorio,
}) {
  final firestoreData = serializers.toFirestore(
    AccesorioRecord.serializer,
    AccesorioRecord(
      (a) => a
        ..precioAccesorio = precioAccesorio
        ..descripcionAccesorio = descripcionAccesorio
        ..cantidadAccesorio = cantidadAccesorio
        ..categoriaAccesorio = categoriaAccesorio
        ..marca = marca
        ..imageAccesorio = imageAccesorio,
    ),
  );

  return firestoreData;
}
