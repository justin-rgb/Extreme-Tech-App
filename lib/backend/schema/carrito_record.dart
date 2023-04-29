import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'carrito_record.g.dart';

abstract class CarritoRecord
    implements Built<CarritoRecord, CarritoRecordBuilder> {
  static Serializer<CarritoRecord> get serializer => _$carritoRecordSerializer;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Cantidad')
  int? get cantidad;

  @BuiltValueField(wireName: 'Imagen')
  String? get imagen;

  @BuiltValueField(wireName: 'Precio')
  int? get precio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CarritoRecordBuilder builder) => builder
    ..descripcion = ''
    ..cantidad = 0
    ..imagen = ''
    ..precio = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CarritoRecord._();
  factory CarritoRecord([void Function(CarritoRecordBuilder) updates]) =
      _$CarritoRecord;

  static CarritoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCarritoRecordData({
  String? descripcion,
  int? cantidad,
  String? imagen,
  int? precio,
}) {
  final firestoreData = serializers.toFirestore(
    CarritoRecord.serializer,
    CarritoRecord(
      (c) => c
        ..descripcion = descripcion
        ..cantidad = cantidad
        ..imagen = imagen
        ..precio = precio,
    ),
  );

  return firestoreData;
}
