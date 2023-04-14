import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_accesorio_record.g.dart';

abstract class CategoriaAccesorioRecord
    implements
        Built<CategoriaAccesorioRecord, CategoriaAccesorioRecordBuilder> {
  static Serializer<CategoriaAccesorioRecord> get serializer =>
      _$categoriaAccesorioRecordSerializer;

  @BuiltValueField(wireName: 'CategoriaAccesorio')
  String? get categoriaAccesorio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaAccesorioRecordBuilder builder) =>
      builder..categoriaAccesorio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaAccesorio');

  static Stream<CategoriaAccesorioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaAccesorioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaAccesorioRecord._();
  factory CategoriaAccesorioRecord(
          [void Function(CategoriaAccesorioRecordBuilder) updates]) =
      _$CategoriaAccesorioRecord;

  static CategoriaAccesorioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaAccesorioRecordData({
  String? categoriaAccesorio,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaAccesorioRecord.serializer,
    CategoriaAccesorioRecord(
      (c) => c..categoriaAccesorio = categoriaAccesorio,
    ),
  );

  return firestoreData;
}
