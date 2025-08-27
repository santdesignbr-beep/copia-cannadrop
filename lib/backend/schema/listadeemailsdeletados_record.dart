import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListadeemailsdeletadosRecord extends FirestoreRecord {
  ListadeemailsdeletadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  List<String>? _email;
  List<String> get email => _email ?? const [];
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _email = getDataList(snapshotData['email']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listadeemailsdeletados');

  static Stream<ListadeemailsdeletadosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ListadeemailsdeletadosRecord.fromSnapshot(s));

  static Future<ListadeemailsdeletadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ListadeemailsdeletadosRecord.fromSnapshot(s));

  static ListadeemailsdeletadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListadeemailsdeletadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListadeemailsdeletadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListadeemailsdeletadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListadeemailsdeletadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListadeemailsdeletadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListadeemailsdeletadosRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ListadeemailsdeletadosRecordDocumentEquality
    implements Equality<ListadeemailsdeletadosRecord> {
  const ListadeemailsdeletadosRecordDocumentEquality();

  @override
  bool equals(
      ListadeemailsdeletadosRecord? e1, ListadeemailsdeletadosRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.email, e2?.email);
  }

  @override
  int hash(ListadeemailsdeletadosRecord? e) =>
      const ListEquality().hash([e?.email]);

  @override
  bool isValidKey(Object? o) => o is ListadeemailsdeletadosRecord;
}
