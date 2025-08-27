import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocAnvisaRecord extends FirestoreRecord {
  DocAnvisaRecord._(
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
      FirebaseFirestore.instance.collection('doc_anvisa');

  static Stream<DocAnvisaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocAnvisaRecord.fromSnapshot(s));

  static Future<DocAnvisaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocAnvisaRecord.fromSnapshot(s));

  static DocAnvisaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocAnvisaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocAnvisaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocAnvisaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocAnvisaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocAnvisaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocAnvisaRecordData({
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

class DocAnvisaRecordDocumentEquality implements Equality<DocAnvisaRecord> {
  const DocAnvisaRecordDocumentEquality();

  @override
  bool equals(DocAnvisaRecord? e1, DocAnvisaRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.documento == e2?.documento &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(DocAnvisaRecord? e) =>
      const ListEquality().hash([e?.nome, e?.documento, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is DocAnvisaRecord;
}
