import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_computadora_record.g.dart';

abstract class CategoriaComputadoraRecord
    implements
        Built<CategoriaComputadoraRecord, CategoriaComputadoraRecordBuilder> {
  static Serializer<CategoriaComputadoraRecord> get serializer =>
      _$categoriaComputadoraRecordSerializer;

  @BuiltValueField(wireName: 'CategoriaComputadora')
  String? get categoriaComputadora;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaComputadoraRecordBuilder builder) =>
      builder..categoriaComputadora = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaComputadora');

  static Stream<CategoriaComputadoraRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaComputadoraRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaComputadoraRecord._();
  factory CategoriaComputadoraRecord(
          [void Function(CategoriaComputadoraRecordBuilder) updates]) =
      _$CategoriaComputadoraRecord;

  static CategoriaComputadoraRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaComputadoraRecordData({
  String? categoriaComputadora,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaComputadoraRecord.serializer,
    CategoriaComputadoraRecord(
      (c) => c..categoriaComputadora = categoriaComputadora,
    ),
  );

  return firestoreData;
}
