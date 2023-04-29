import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'avatar_record.g.dart';

abstract class AvatarRecord
    implements Built<AvatarRecord, AvatarRecordBuilder> {
  static Serializer<AvatarRecord> get serializer => _$avatarRecordSerializer;

  String? get avatar1;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AvatarRecordBuilder builder) =>
      builder..avatar1 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avatar');

  static Stream<AvatarRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AvatarRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AvatarRecord._();
  factory AvatarRecord([void Function(AvatarRecordBuilder) updates]) =
      _$AvatarRecord;

  static AvatarRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAvatarRecordData({
  String? avatar1,
}) {
  final firestoreData = serializers.toFirestore(
    AvatarRecord.serializer,
    AvatarRecord(
      (a) => a..avatar1 = avatar1,
    ),
  );

  return firestoreData;
}
