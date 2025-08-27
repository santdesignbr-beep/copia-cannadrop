import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegiaoRecord extends FirestoreRecord {
  RegiaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Regiao');

  static Stream<RegiaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegiaoRecord.fromSnapshot(s));

  static Future<RegiaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegiaoRecord.fromSnapshot(s));

  static RegiaoRecord fromSnapshot(DocumentSnapshot snapshot) => RegiaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegiaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegiaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegiaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegiaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegiaoRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegiaoRecordDocumentEquality implements Equality<RegiaoRecord> {
  const RegiaoRecordDocumentEquality();

  @override
  bool equals(RegiaoRecord? e1, RegiaoRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(RegiaoRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is RegiaoRecord;
}
