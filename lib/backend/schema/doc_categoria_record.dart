import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocCategoriaRecord extends FirestoreRecord {
  DocCategoriaRecord._(
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
      FirebaseFirestore.instance.collection('doc_categoria');

  static Stream<DocCategoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocCategoriaRecord.fromSnapshot(s));

  static Future<DocCategoriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocCategoriaRecord.fromSnapshot(s));

  static DocCategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocCategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocCategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocCategoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocCategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocCategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocCategoriaRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocCategoriaRecordDocumentEquality
    implements Equality<DocCategoriaRecord> {
  const DocCategoriaRecordDocumentEquality();

  @override
  bool equals(DocCategoriaRecord? e1, DocCategoriaRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(DocCategoriaRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is DocCategoriaRecord;
}
