import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_celular_record.g.dart';

abstract class CategoriaCelularRecord
    implements Built<CategoriaCelularRecord, CategoriaCelularRecordBuilder> {
  static Serializer<CategoriaCelularRecord> get serializer =>
      _$categoriaCelularRecordSerializer;

  @BuiltValueField(wireName: 'CategoriaCelular')
  String? get categoriaCelular;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaCelularRecordBuilder builder) =>
      builder..categoriaCelular = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaCelular');

  static Stream<CategoriaCelularRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaCelularRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaCelularRecord._();
  factory CategoriaCelularRecord(
          [void Function(CategoriaCelularRecordBuilder) updates]) =
      _$CategoriaCelularRecord;

  static CategoriaCelularRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaCelularRecordData({
  String? categoriaCelular,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaCelularRecord.serializer,
    CategoriaCelularRecord(
      (c) => c..categoriaCelular = categoriaCelular,
    ),
  );

  return firestoreData;
}
