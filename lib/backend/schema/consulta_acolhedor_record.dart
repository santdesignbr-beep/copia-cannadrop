import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsultaAcolhedorRecord extends FirestoreRecord {
  ConsultaAcolhedorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  // "Paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  bool hasPaciente() => _paciente != null;

  // "Colaborador" field.
  String? _colaborador;
  String get colaborador => _colaborador ?? '';
  bool hasColaborador() => _colaborador != null;

  // "imagecolab" field.
  String? _imagecolab;
  String get imagecolab => _imagecolab ?? '';
  bool hasImagecolab() => _imagecolab != null;

  // "assinatura" field.
  String? _assinatura;
  String get assinatura => _assinatura ?? '';
  bool hasAssinatura() => _assinatura != null;

  // "iduser" field.
  DocumentReference? _iduser;
  DocumentReference? get iduser => _iduser;
  bool hasIduser() => _iduser != null;

  // "permissao" field.
  List<String>? _permissao;
  List<String> get permissao => _permissao ?? const [];
  bool hasPermissao() => _permissao != null;

  // "atendido" field.
  bool? _atendido;
  bool get atendido => _atendido ?? false;
  bool hasAtendido() => _atendido != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "data_horario" field.
  DateTime? _dataHorario;
  DateTime? get dataHorario => _dataHorario;
  bool hasDataHorario() => _dataHorario != null;

  // "excluir_consulta" field.
  bool? _excluirConsulta;
  bool get excluirConsulta => _excluirConsulta ?? false;
  bool hasExcluirConsulta() => _excluirConsulta != null;

  // "consulta" field.
  DocumentReference? _consulta;
  DocumentReference? get consulta => _consulta;
  bool hasConsulta() => _consulta != null;

  void _initializeFields() {
    _obs = snapshotData['obs'] as String?;
    _paciente = snapshotData['Paciente'] as String?;
    _colaborador = snapshotData['Colaborador'] as String?;
    _imagecolab = snapshotData['imagecolab'] as String?;
    _assinatura = snapshotData['assinatura'] as String?;
    _iduser = snapshotData['iduser'] as DocumentReference?;
    _permissao = getDataList(snapshotData['permissao']);
    _atendido = snapshotData['atendido'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _horario = snapshotData['horario'] as String?;
    _data = snapshotData['data'] as String?;
    _dataHorario = snapshotData['data_horario'] as DateTime?;
    _excluirConsulta = snapshotData['excluir_consulta'] as bool?;
    _consulta = snapshotData['consulta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consulta_acolhedor');

  static Stream<ConsultaAcolhedorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsultaAcolhedorRecord.fromSnapshot(s));

  static Future<ConsultaAcolhedorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ConsultaAcolhedorRecord.fromSnapshot(s));

  static ConsultaAcolhedorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsultaAcolhedorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsultaAcolhedorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsultaAcolhedorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsultaAcolhedorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsultaAcolhedorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsultaAcolhedorRecordData({
  String? obs,
  String? paciente,
  String? colaborador,
  String? imagecolab,
  String? assinatura,
  DocumentReference? iduser,
  bool? atendido,
  DateTime? createdTime,
  String? horario,
  String? data,
  DateTime? dataHorario,
  bool? excluirConsulta,
  DocumentReference? consulta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'obs': obs,
      'Paciente': paciente,
      'Colaborador': colaborador,
      'imagecolab': imagecolab,
      'assinatura': assinatura,
      'iduser': iduser,
      'atendido': atendido,
      'created_time': createdTime,
      'horario': horario,
      'data': data,
      'data_horario': dataHorario,
      'excluir_consulta': excluirConsulta,
      'consulta': consulta,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsultaAcolhedorRecordDocumentEquality
    implements Equality<ConsultaAcolhedorRecord> {
  const ConsultaAcolhedorRecordDocumentEquality();

  @override
  bool equals(ConsultaAcolhedorRecord? e1, ConsultaAcolhedorRecord? e2) {
    const listEquality = ListEquality();
    return e1?.obs == e2?.obs &&
        e1?.paciente == e2?.paciente &&
        e1?.colaborador == e2?.colaborador &&
        e1?.imagecolab == e2?.imagecolab &&
        e1?.assinatura == e2?.assinatura &&
        e1?.iduser == e2?.iduser &&
        listEquality.equals(e1?.permissao, e2?.permissao) &&
        e1?.atendido == e2?.atendido &&
        e1?.createdTime == e2?.createdTime &&
        e1?.horario == e2?.horario &&
        e1?.data == e2?.data &&
        e1?.dataHorario == e2?.dataHorario &&
        e1?.excluirConsulta == e2?.excluirConsulta &&
        e1?.consulta == e2?.consulta;
  }

  @override
  int hash(ConsultaAcolhedorRecord? e) => const ListEquality().hash([
        e?.obs,
        e?.paciente,
        e?.colaborador,
        e?.imagecolab,
        e?.assinatura,
        e?.iduser,
        e?.permissao,
        e?.atendido,
        e?.createdTime,
        e?.horario,
        e?.data,
        e?.dataHorario,
        e?.excluirConsulta,
        e?.consulta
      ]);

  @override
  bool isValidKey(Object? o) => o is ConsultaAcolhedorRecord;
}
