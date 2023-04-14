import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_periferico_record.g.dart';

abstract class CategoriaPerifericoRecord
    implements
        Built<CategoriaPerifericoRecord, CategoriaPerifericoRecordBuilder> {
  static Serializer<CategoriaPerifericoRecord> get serializer =>
      _$categoriaPerifericoRecordSerializer;

  @BuiltValueField(wireName: 'CategoriaPeriferico')
  String? get categoriaPeriferico;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaPerifericoRecordBuilder builder) =>
      builder..categoriaPeriferico = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaPeriferico');

  static Stream<CategoriaPerifericoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaPerifericoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaPerifericoRecord._();
  factory CategoriaPerifericoRecord(
          [void Function(CategoriaPerifericoRecordBuilder) updates]) =
      _$CategoriaPerifericoRecord;

  static CategoriaPerifericoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaPerifericoRecordData({
  String? categoriaPeriferico,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaPerifericoRecord.serializer,
    CategoriaPerifericoRecord(
      (c) => c..categoriaPeriferico = categoriaPeriferico,
    ),
  );

  return firestoreData;
}
