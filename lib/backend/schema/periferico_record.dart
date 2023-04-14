import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'periferico_record.g.dart';

abstract class PerifericoRecord
    implements Built<PerifericoRecord, PerifericoRecordBuilder> {
  static Serializer<PerifericoRecord> get serializer =>
      _$perifericoRecordSerializer;

  @BuiltValueField(wireName: 'PrecioPeriferico')
  int? get precioPeriferico;

  @BuiltValueField(wireName: 'DescripcionPeriferico')
  String? get descripcionPeriferico;

  @BuiltValueField(wireName: 'CantidaPeriferico')
  int? get cantidaPeriferico;

  @BuiltValueField(wireName: 'CategoriaPeriferico')
  DocumentReference? get categoriaPeriferico;

  @BuiltValueField(wireName: 'Marca')
  DocumentReference? get marca;

  @BuiltValueField(wireName: 'ImagePeriferico')
  String? get imagePeriferico;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PerifericoRecordBuilder builder) => builder
    ..precioPeriferico = 0
    ..descripcionPeriferico = ''
    ..cantidaPeriferico = 0
    ..imagePeriferico = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Periferico');

  static Stream<PerifericoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PerifericoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PerifericoRecord._();
  factory PerifericoRecord([void Function(PerifericoRecordBuilder) updates]) =
      _$PerifericoRecord;

  static PerifericoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPerifericoRecordData({
  int? precioPeriferico,
  String? descripcionPeriferico,
  int? cantidaPeriferico,
  DocumentReference? categoriaPeriferico,
  DocumentReference? marca,
  String? imagePeriferico,
}) {
  final firestoreData = serializers.toFirestore(
    PerifericoRecord.serializer,
    PerifericoRecord(
      (p) => p
        ..precioPeriferico = precioPeriferico
        ..descripcionPeriferico = descripcionPeriferico
        ..cantidaPeriferico = cantidaPeriferico
        ..categoriaPeriferico = categoriaPeriferico
        ..marca = marca
        ..imagePeriferico = imagePeriferico,
    ),
  );

  return firestoreData;
}
