import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsultaPacienteRecord extends FirestoreRecord {
  ConsultaPacienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "medico" field.
  String? _medico;
  String get medico => _medico ?? '';
  bool hasMedico() => _medico != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "jautilizou" field.
  String? _jautilizou;
  String get jautilizou => _jautilizou ?? '';
  bool hasJautilizou() => _jautilizou != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "custo" field.
  String? _custo;
  String get custo => _custo ?? '';
  bool hasCusto() => _custo != null;

  // "prescricao" field.
  String? _prescricao;
  String get prescricao => _prescricao ?? '';
  bool hasPrescricao() => _prescricao != null;

  // "anvisa" field.
  String? _anvisa;
  String get anvisa => _anvisa ?? '';
  bool hasAnvisa() => _anvisa != null;

  // "creatoruser" field.
  DocumentReference? _creatoruser;
  DocumentReference? get creatoruser => _creatoruser;
  bool hasCreatoruser() => _creatoruser != null;

  // "agendamento" field.
  DocumentReference? _agendamento;
  DocumentReference? get agendamento => _agendamento;
  bool hasAgendamento() => _agendamento != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  bool hasPaciente() => _paciente != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "colaborador" field.
  String? _colaborador;
  String get colaborador => _colaborador ?? '';
  bool hasColaborador() => _colaborador != null;

  // "assinatura" field.
  String? _assinatura;
  String get assinatura => _assinatura ?? '';
  bool hasAssinatura() => _assinatura != null;

  // "photocolab" field.
  String? _photocolab;
  String get photocolab => _photocolab ?? '';
  bool hasPhotocolab() => _photocolab != null;

  // "finalizada" field.
  bool? _finalizada;
  bool get finalizada => _finalizada ?? false;
  bool hasFinalizada() => _finalizada != null;

  // "data_horario" field.
  DateTime? _dataHorario;
  DateTime? get dataHorario => _dataHorario;
  bool hasDataHorario() => _dataHorario != null;

  // "CID" field.
  String? _cid;
  String get cid => _cid ?? '';
  bool hasCid() => _cid != null;

  // "Patologia" field.
  String? _patologia;
  String get patologia => _patologia ?? '';
  bool hasPatologia() => _patologia != null;

  // "permissao" field.
  List<String>? _permissao;
  List<String> get permissao => _permissao ?? const [];
  bool hasPermissao() => _permissao != null;

  // "excluir_consulta" field.
  bool? _excluirConsulta;
  bool get excluirConsulta => _excluirConsulta ?? false;
  bool hasExcluirConsulta() => _excluirConsulta != null;

  // "consulta" field.
  DocumentReference? _consulta;
  DocumentReference? get consulta => _consulta;
  bool hasConsulta() => _consulta != null;

  void _initializeFields() {
    _medico = snapshotData['medico'] as String?;
    _motivo = snapshotData['motivo'] as String?;
    _jautilizou = snapshotData['jautilizou'] as String?;
    _observacao = snapshotData['observacao'] as String?;
    _custo = snapshotData['custo'] as String?;
    _prescricao = snapshotData['prescricao'] as String?;
    _anvisa = snapshotData['anvisa'] as String?;
    _creatoruser = snapshotData['creatoruser'] as DocumentReference?;
    _agendamento = snapshotData['agendamento'] as DocumentReference?;
    _userid = snapshotData['userid'] as DocumentReference?;
    _paciente = snapshotData['paciente'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _colaborador = snapshotData['colaborador'] as String?;
    _assinatura = snapshotData['assinatura'] as String?;
    _photocolab = snapshotData['photocolab'] as String?;
    _finalizada = snapshotData['finalizada'] as bool?;
    _dataHorario = snapshotData['data_horario'] as DateTime?;
    _cid = snapshotData['CID'] as String?;
    _patologia = snapshotData['Patologia'] as String?;
    _permissao = getDataList(snapshotData['permissao']);
    _excluirConsulta = snapshotData['excluir_consulta'] as bool?;
    _consulta = snapshotData['consulta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consulta_paciente');

  static Stream<ConsultaPacienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsultaPacienteRecord.fromSnapshot(s));

  static Future<ConsultaPacienteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ConsultaPacienteRecord.fromSnapshot(s));

  static ConsultaPacienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsultaPacienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsultaPacienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsultaPacienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsultaPacienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsultaPacienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsultaPacienteRecordData({
  String? medico,
  String? motivo,
  String? jautilizou,
  String? observacao,
  String? custo,
  String? prescricao,
  String? anvisa,
  DocumentReference? creatoruser,
  DocumentReference? agendamento,
  DocumentReference? userid,
  String? paciente,
  DateTime? createdTime,
  String? colaborador,
  String? assinatura,
  String? photocolab,
  bool? finalizada,
  DateTime? dataHorario,
  String? cid,
  String? patologia,
  bool? excluirConsulta,
  DocumentReference? consulta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'medico': medico,
      'motivo': motivo,
      'jautilizou': jautilizou,
      'observacao': observacao,
      'custo': custo,
      'prescricao': prescricao,
      'anvisa': anvisa,
      'creatoruser': creatoruser,
      'agendamento': agendamento,
      'userid': userid,
      'paciente': paciente,
      'created_time': createdTime,
      'colaborador': colaborador,
      'assinatura': assinatura,
      'photocolab': photocolab,
      'finalizada': finalizada,
      'data_horario': dataHorario,
      'CID': cid,
      'Patologia': patologia,
      'excluir_consulta': excluirConsulta,
      'consulta': consulta,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsultaPacienteRecordDocumentEquality
    implements Equality<ConsultaPacienteRecord> {
  const ConsultaPacienteRecordDocumentEquality();

  @override
  bool equals(ConsultaPacienteRecord? e1, ConsultaPacienteRecord? e2) {
    const listEquality = ListEquality();
    return e1?.medico == e2?.medico &&
        e1?.motivo == e2?.motivo &&
        e1?.jautilizou == e2?.jautilizou &&
        e1?.observacao == e2?.observacao &&
        e1?.custo == e2?.custo &&
        e1?.prescricao == e2?.prescricao &&
        e1?.anvisa == e2?.anvisa &&
        e1?.creatoruser == e2?.creatoruser &&
        e1?.agendamento == e2?.agendamento &&
        e1?.userid == e2?.userid &&
        e1?.paciente == e2?.paciente &&
        e1?.createdTime == e2?.createdTime &&
        e1?.colaborador == e2?.colaborador &&
        e1?.assinatura == e2?.assinatura &&
        e1?.photocolab == e2?.photocolab &&
        e1?.finalizada == e2?.finalizada &&
        e1?.dataHorario == e2?.dataHorario &&
        e1?.cid == e2?.cid &&
        e1?.patologia == e2?.patologia &&
        listEquality.equals(e1?.permissao, e2?.permissao) &&
        e1?.excluirConsulta == e2?.excluirConsulta &&
        e1?.consulta == e2?.consulta;
  }

  @override
  int hash(ConsultaPacienteRecord? e) => const ListEquality().hash([
        e?.medico,
        e?.motivo,
        e?.jautilizou,
        e?.observacao,
        e?.custo,
        e?.prescricao,
        e?.anvisa,
        e?.creatoruser,
        e?.agendamento,
        e?.userid,
        e?.paciente,
        e?.createdTime,
        e?.colaborador,
        e?.assinatura,
        e?.photocolab,
        e?.finalizada,
        e?.dataHorario,
        e?.cid,
        e?.patologia,
        e?.permissao,
        e?.excluirConsulta,
        e?.consulta
      ]);

  @override
  bool isValidKey(Object? o) => o is ConsultaPacienteRecord;
}
