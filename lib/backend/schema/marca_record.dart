import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'marca_record.g.dart';

abstract class MarcaRecord implements Built<MarcaRecord, MarcaRecordBuilder> {
  static Serializer<MarcaRecord> get serializer => _$marcaRecordSerializer;

  @BuiltValueField(wireName: 'Marca')
  String? get marca;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MarcaRecordBuilder builder) =>
      builder..marca = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Marca');

  static Stream<MarcaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MarcaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MarcaRecord._();
  factory MarcaRecord([void Function(MarcaRecordBuilder) updates]) =
      _$MarcaRecord;

  static MarcaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMarcaRecordData({
  String? marca,
}) {
  final firestoreData = serializers.toFirestore(
    MarcaRecord.serializer,
    MarcaRecord(
      (m) => m..marca = marca,
    ),
  );

  return firestoreData;
}
