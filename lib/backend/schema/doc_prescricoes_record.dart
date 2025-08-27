import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocPrescricoesRecord extends FirestoreRecord {
  DocPrescricoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  bool hasDocumento() => _documento != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _documento = snapshotData['documento'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doc_prescricoes');

  static Stream<DocPrescricoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocPrescricoesRecord.fromSnapshot(s));

  static Future<DocPrescricoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocPrescricoesRecord.fromSnapshot(s));

  static DocPrescricoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocPrescricoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocPrescricoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocPrescricoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocPrescricoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocPrescricoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocPrescricoesRecordData({
  String? nome,
  String? documento,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'documento': documento,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocPrescricoesRecordDocumentEquality
    implements Equality<DocPrescricoesRecord> {
  const DocPrescricoesRecordDocumentEquality();

  @override
  bool equals(DocPrescricoesRecord? e1, DocPrescricoesRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.documento == e2?.documento &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(DocPrescricoesRecord? e) =>
      const ListEquality().hash([e?.nome, e?.documento, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is DocPrescricoesRecord;
}
