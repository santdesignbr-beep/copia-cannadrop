import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbacksRecord extends FirestoreRecord {
  FeedbacksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as String?;
    _feedback = snapshotData['feedback'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedbacks');

  static Stream<FeedbacksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbacksRecord.fromSnapshot(s));

  static Future<FeedbacksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbacksRecord.fromSnapshot(s));

  static FeedbacksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbacksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbacksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbacksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbacksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbacksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbacksRecordData({
  String? usuario,
  String? feedback,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'feedback': feedback,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbacksRecordDocumentEquality implements Equality<FeedbacksRecord> {
  const FeedbacksRecordDocumentEquality();

  @override
  bool equals(FeedbacksRecord? e1, FeedbacksRecord? e2) {
    return e1?.usuario == e2?.usuario && e1?.feedback == e2?.feedback;
  }

  @override
  int hash(FeedbacksRecord? e) =>
      const ListEquality().hash([e?.usuario, e?.feedback]);

  @override
  bool isValidKey(Object? o) => o is FeedbacksRecord;
}
