import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenorRecord extends FirestoreRecord {
  MenorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "escolaridade" field.
  String? _escolaridade;
  String get escolaridade => _escolaridade ?? '';
  bool hasEscolaridade() => _escolaridade != null;

  // "nacionalidade" field.
  String? _nacionalidade;
  String get nacionalidade => _nacionalidade ?? '';
  bool hasNacionalidade() => _nacionalidade != null;

  // "datanasc" field.
  String? _datanasc;
  String get datanasc => _datanasc ?? '';
  bool hasDatanasc() => _datanasc != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "nomeresp" field.
  String? _nomeresp;
  String get nomeresp => _nomeresp ?? '';
  bool hasNomeresp() => _nomeresp != null;

  // "iduser" field.
  DocumentReference? _iduser;
  DocumentReference? get iduser => _iduser;
  bool hasIduser() => _iduser != null;

  // "Menor" field.
  bool? _menor;
  bool get menor => _menor ?? false;
  bool hasMenor() => _menor != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "GraudeParentesco" field.
  String? _graudeParentesco;
  String get graudeParentesco => _graudeParentesco ?? '';
  bool hasGraudeParentesco() => _graudeParentesco != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _escolaridade = snapshotData['escolaridade'] as String?;
    _nacionalidade = snapshotData['nacionalidade'] as String?;
    _datanasc = snapshotData['datanasc'] as String?;
    _photo = snapshotData['photo'] as String?;
    _nomeresp = snapshotData['nomeresp'] as String?;
    _iduser = snapshotData['iduser'] as DocumentReference?;
    _menor = snapshotData['Menor'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _graudeParentesco = snapshotData['GraudeParentesco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Menor');

  static Stream<MenorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenorRecord.fromSnapshot(s));

  static Future<MenorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenorRecord.fromSnapshot(s));

  static MenorRecord fromSnapshot(DocumentSnapshot snapshot) => MenorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenorRecordData({
  String? nome,
  String? escolaridade,
  String? nacionalidade,
  String? datanasc,
  String? photo,
  String? nomeresp,
  DocumentReference? iduser,
  bool? menor,
  DateTime? createdTime,
  String? graudeParentesco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'escolaridade': escolaridade,
      'nacionalidade': nacionalidade,
      'datanasc': datanasc,
      'photo': photo,
      'nomeresp': nomeresp,
      'iduser': iduser,
      'Menor': menor,
      'created_time': createdTime,
      'GraudeParentesco': graudeParentesco,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenorRecordDocumentEquality implements Equality<MenorRecord> {
  const MenorRecordDocumentEquality();

  @override
  bool equals(MenorRecord? e1, MenorRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.escolaridade == e2?.escolaridade &&
        e1?.nacionalidade == e2?.nacionalidade &&
        e1?.datanasc == e2?.datanasc &&
        e1?.photo == e2?.photo &&
        e1?.nomeresp == e2?.nomeresp &&
        e1?.iduser == e2?.iduser &&
        e1?.menor == e2?.menor &&
        e1?.createdTime == e2?.createdTime &&
        e1?.graudeParentesco == e2?.graudeParentesco;
  }

  @override
  int hash(MenorRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.escolaridade,
        e?.nacionalidade,
        e?.datanasc,
        e?.photo,
        e?.nomeresp,
        e?.iduser,
        e?.menor,
        e?.createdTime,
        e?.graudeParentesco
      ]);

  @override
  bool isValidKey(Object? o) => o is MenorRecord;
}
