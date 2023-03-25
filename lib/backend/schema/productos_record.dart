import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'productos_record.g.dart';

abstract class ProductosRecord
    implements Built<ProductosRecord, ProductosRecordBuilder> {
  static Serializer<ProductosRecord> get serializer =>
      _$productosRecordSerializer;

  int? get idProducto;

  String? get modeloProducto;

  String? get especProducto;

  String? get marcaProducto;

  double? get precioProducto;

  String? get imagenProducto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductosRecordBuilder builder) => builder
    ..idProducto = 0
    ..modeloProducto = ''
    ..especProducto = ''
    ..marcaProducto = ''
    ..precioProducto = 0.0
    ..imagenProducto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductosRecord._();
  factory ProductosRecord([void Function(ProductosRecordBuilder) updates]) =
      _$ProductosRecord;

  static ProductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductosRecordData({
  int? idProducto,
  String? modeloProducto,
  String? especProducto,
  String? marcaProducto,
  double? precioProducto,
  String? imagenProducto,
}) {
  final firestoreData = serializers.toFirestore(
    ProductosRecord.serializer,
    ProductosRecord(
      (p) => p
        ..idProducto = idProducto
        ..modeloProducto = modeloProducto
        ..especProducto = especProducto
        ..marcaProducto = marcaProducto
        ..precioProducto = precioProducto
        ..imagenProducto = imagenProducto,
    ),
  );

  return firestoreData;
}
