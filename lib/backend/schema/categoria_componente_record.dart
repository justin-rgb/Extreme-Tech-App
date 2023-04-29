import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_componente_record.g.dart';

abstract class CategoriaComponenteRecord
    implements
        Built<CategoriaComponenteRecord, CategoriaComponenteRecordBuilder> {
  static Serializer<CategoriaComponenteRecord> get serializer =>
      _$categoriaComponenteRecordSerializer;

  @BuiltValueField(wireName: 'CategoriaComponente')
  String? get categoriaComponente;

  @BuiltValueField(wireName: 'IMGComponente')
  String? get iMGComponente;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaComponenteRecordBuilder builder) =>
      builder
        ..categoriaComponente = ''
        ..iMGComponente = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaComponente');

  static Stream<CategoriaComponenteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaComponenteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaComponenteRecord._();
  factory CategoriaComponenteRecord(
          [void Function(CategoriaComponenteRecordBuilder) updates]) =
      _$CategoriaComponenteRecord;

  static CategoriaComponenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaComponenteRecordData({
  String? categoriaComponente,
  String? iMGComponente,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaComponenteRecord.serializer,
    CategoriaComponenteRecord(
      (c) => c
        ..categoriaComponente = categoriaComponente
        ..iMGComponente = iMGComponente,
    ),
  );

  return firestoreData;
}
