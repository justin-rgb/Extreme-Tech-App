import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'componente_record.g.dart';

abstract class ComponenteRecord
    implements Built<ComponenteRecord, ComponenteRecordBuilder> {
  static Serializer<ComponenteRecord> get serializer =>
      _$componenteRecordSerializer;

  @BuiltValueField(wireName: 'PrecioComponente')
  int? get precioComponente;

  @BuiltValueField(wireName: 'DescripcionComponente')
  String? get descripcionComponente;

  @BuiltValueField(wireName: 'CantidadComponente')
  int? get cantidadComponente;

  @BuiltValueField(wireName: 'Marca')
  DocumentReference? get marca;

  @BuiltValueField(wireName: 'CategoriaComponente')
  DocumentReference? get categoriaComponente;

  @BuiltValueField(wireName: 'ImageComponente')
  String? get imageComponente;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComponenteRecordBuilder builder) => builder
    ..precioComponente = 0
    ..descripcionComponente = ''
    ..cantidadComponente = 0
    ..imageComponente = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Componente');

  static Stream<ComponenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComponenteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComponenteRecord._();
  factory ComponenteRecord([void Function(ComponenteRecordBuilder) updates]) =
      _$ComponenteRecord;

  static ComponenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComponenteRecordData({
  int? precioComponente,
  String? descripcionComponente,
  int? cantidadComponente,
  DocumentReference? marca,
  DocumentReference? categoriaComponente,
  String? imageComponente,
}) {
  final firestoreData = serializers.toFirestore(
    ComponenteRecord.serializer,
    ComponenteRecord(
      (c) => c
        ..precioComponente = precioComponente
        ..descripcionComponente = descripcionComponente
        ..cantidadComponente = cantidadComponente
        ..marca = marca
        ..categoriaComponente = categoriaComponente
        ..imageComponente = imageComponente,
    ),
  );

  return firestoreData;
}
