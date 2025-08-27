import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PacienteRecord extends FirestoreRecord {
  PacienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "regiao" field.
  String? _regiao;
  String get regiao => _regiao ?? '';
  bool hasRegiao() => _regiao != null;

  // "iduser" field.
  DocumentReference? _iduser;
  DocumentReference? get iduser => _iduser;
  bool hasIduser() => _iduser != null;

  // "tratamento" field.
  DocumentReference? _tratamento;
  DocumentReference? get tratamento => _tratamento;
  bool hasTratamento() => _tratamento != null;

  // "consulta" field.
  DocumentReference? _consulta;
  DocumentReference? get consulta => _consulta;
  bool hasConsulta() => _consulta != null;

  // "atendido" field.
  bool? _atendido;
  bool get atendido => _atendido ?? false;
  bool hasAtendido() => _atendido != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _horario = snapshotData['horario'] as String?;
    _regiao = snapshotData['regiao'] as String?;
    _iduser = snapshotData['iduser'] as DocumentReference?;
    _tratamento = snapshotData['tratamento'] as DocumentReference?;
    _consulta = snapshotData['consulta'] as DocumentReference?;
    _atendido = snapshotData['atendido'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Paciente');

  static Stream<PacienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PacienteRecord.fromSnapshot(s));

  static Future<PacienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PacienteRecord.fromSnapshot(s));

  static PacienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PacienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PacienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PacienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PacienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PacienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPacienteRecordData({
  String? nome,
  String? imagem,
  String? horario,
  String? regiao,
  DocumentReference? iduser,
  DocumentReference? tratamento,
  DocumentReference? consulta,
  bool? atendido,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'imagem': imagem,
      'horario': horario,
      'regiao': regiao,
      'iduser': iduser,
      'tratamento': tratamento,
      'consulta': consulta,
      'atendido': atendido,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PacienteRecordDocumentEquality implements Equality<PacienteRecord> {
  const PacienteRecordDocumentEquality();

  @override
  bool equals(PacienteRecord? e1, PacienteRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.imagem == e2?.imagem &&
        e1?.horario == e2?.horario &&
        e1?.regiao == e2?.regiao &&
        e1?.iduser == e2?.iduser &&
        e1?.tratamento == e2?.tratamento &&
        e1?.consulta == e2?.consulta &&
        e1?.atendido == e2?.atendido &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(PacienteRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.imagem,
        e?.horario,
        e?.regiao,
        e?.iduser,
        e?.tratamento,
        e?.consulta,
        e?.atendido,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is PacienteRecord;
}
