import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_record.g.dart';

abstract class CategoriaRecord
    implements Built<CategoriaRecord, CategoriaRecordBuilder> {
  static Serializer<CategoriaRecord> get serializer =>
      _$categoriaRecordSerializer;

  String? get nomCategoria;

  int? get idCategoria;

  String? get imagenCategoria;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaRecordBuilder builder) => builder
    ..nomCategoria = ''
    ..idCategoria = 0
    ..imagenCategoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categoria');

  static Stream<CategoriaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaRecord._();
  factory CategoriaRecord([void Function(CategoriaRecordBuilder) updates]) =
      _$CategoriaRecord;

  static CategoriaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaRecordData({
  String? nomCategoria,
  int? idCategoria,
  String? imagenCategoria,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaRecord.serializer,
    CategoriaRecord(
      (c) => c
        ..nomCategoria = nomCategoria
        ..idCategoria = idCategoria
        ..imagenCategoria = imagenCategoria,
    ),
  );

  return firestoreData;
}
