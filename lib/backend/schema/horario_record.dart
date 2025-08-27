import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorarioRecord extends FirestoreRecord {
  HorarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Horario');

  static Stream<HorarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorarioRecord.fromSnapshot(s));

  static Future<HorarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorarioRecord.fromSnapshot(s));

  static HorarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorarioRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorarioRecordDocumentEquality implements Equality<HorarioRecord> {
  const HorarioRecordDocumentEquality();

  @override
  bool equals(HorarioRecord? e1, HorarioRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(HorarioRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is HorarioRecord;
}
