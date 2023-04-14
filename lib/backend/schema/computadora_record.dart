import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'computadora_record.g.dart';

abstract class ComputadoraRecord
    implements Built<ComputadoraRecord, ComputadoraRecordBuilder> {
  static Serializer<ComputadoraRecord> get serializer =>
      _$computadoraRecordSerializer;

  @BuiltValueField(wireName: 'PrecioComputadora')
  int? get precioComputadora;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'CantidadComputadora')
  int? get cantidadComputadora;

  @BuiltValueField(wireName: 'CategoriaComputadora')
  DocumentReference? get categoriaComputadora;

  @BuiltValueField(wireName: 'ImageComputadora')
  String? get imageComputadora;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComputadoraRecordBuilder builder) => builder
    ..precioComputadora = 0
    ..descripcion = ''
    ..cantidadComputadora = 0
    ..imageComputadora = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Computadora');

  static Stream<ComputadoraRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComputadoraRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComputadoraRecord._();
  factory ComputadoraRecord([void Function(ComputadoraRecordBuilder) updates]) =
      _$ComputadoraRecord;

  static ComputadoraRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComputadoraRecordData({
  int? precioComputadora,
  String? descripcion,
  int? cantidadComputadora,
  DocumentReference? categoriaComputadora,
  String? imageComputadora,
}) {
  final firestoreData = serializers.toFirestore(
    ComputadoraRecord.serializer,
    ComputadoraRecord(
      (c) => c
        ..precioComputadora = precioComputadora
        ..descripcion = descripcion
        ..cantidadComputadora = cantidadComputadora
        ..categoriaComputadora = categoriaComputadora
        ..imageComputadora = imageComputadora,
    ),
  );

  return firestoreData;
}
