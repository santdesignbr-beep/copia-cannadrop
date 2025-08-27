import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TratamentoRecord extends FirestoreRecord {
  TratamentoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "medico" field.
  String? _medico;
  String get medico => _medico ?? '';
  bool hasMedico() => _medico != null;

  // "extrato" field.
  String? _extrato;
  String get extrato => _extrato ?? '';
  bool hasExtrato() => _extrato != null;

  // "concentracao" field.
  String? _concentracao;
  String get concentracao => _concentracao ?? '';
  bool hasConcentracao() => _concentracao != null;

  // "dose" field.
  String? _dose;
  String get dose => _dose ?? '';
  bool hasDose() => _dose != null;

  // "quantasx" field.
  String? _quantasx;
  String get quantasx => _quantasx ?? '';
  bool hasQuantasx() => _quantasx != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "assinatura" field.
  String? _assinatura;
  String get assinatura => _assinatura ?? '';
  bool hasAssinatura() => _assinatura != null;

  // "paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  bool hasPaciente() => _paciente != null;

  // "creatoruser" field.
  DocumentReference? _creatoruser;
  DocumentReference? get creatoruser => _creatoruser;
  bool hasCreatoruser() => _creatoruser != null;

  // "permissao" field.
  List<String>? _permissao;
  List<String> get permissao => _permissao ?? const [];
  bool hasPermissao() => _permissao != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "colaborador" field.
  String? _colaborador;
  String get colaborador => _colaborador ?? '';
  bool hasColaborador() => _colaborador != null;

  // "photocolab" field.
  String? _photocolab;
  String get photocolab => _photocolab ?? '';
  bool hasPhotocolab() => _photocolab != null;

  // "CRM" field.
  String? _crm;
  String get crm => _crm ?? '';
  bool hasCrm() => _crm != null;

  void _initializeFields() {
    _medico = snapshotData['medico'] as String?;
    _extrato = snapshotData['extrato'] as String?;
    _concentracao = snapshotData['concentracao'] as String?;
    _dose = snapshotData['dose'] as String?;
    _quantasx = snapshotData['quantasx'] as String?;
    _observacao = snapshotData['observacao'] as String?;
    _assinatura = snapshotData['assinatura'] as String?;
    _paciente = snapshotData['paciente'] as String?;
    _creatoruser = snapshotData['creatoruser'] as DocumentReference?;
    _permissao = getDataList(snapshotData['permissao']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _colaborador = snapshotData['colaborador'] as String?;
    _photocolab = snapshotData['photocolab'] as String?;
    _crm = snapshotData['CRM'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tratamento');

  static Stream<TratamentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TratamentoRecord.fromSnapshot(s));

  static Future<TratamentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TratamentoRecord.fromSnapshot(s));

  static TratamentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TratamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TratamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TratamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TratamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TratamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTratamentoRecordData({
  String? medico,
  String? extrato,
  String? concentracao,
  String? dose,
  String? quantasx,
  String? observacao,
  String? assinatura,
  String? paciente,
  DocumentReference? creatoruser,
  DateTime? createdTime,
  String? colaborador,
  String? photocolab,
  String? crm,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'medico': medico,
      'extrato': extrato,
      'concentracao': concentracao,
      'dose': dose,
      'quantasx': quantasx,
      'observacao': observacao,
      'assinatura': assinatura,
      'paciente': paciente,
      'creatoruser': creatoruser,
      'created_time': createdTime,
      'colaborador': colaborador,
      'photocolab': photocolab,
      'CRM': crm,
    }.withoutNulls,
  );

  return firestoreData;
}

class TratamentoRecordDocumentEquality implements Equality<TratamentoRecord> {
  const TratamentoRecordDocumentEquality();

  @override
  bool equals(TratamentoRecord? e1, TratamentoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.medico == e2?.medico &&
        e1?.extrato == e2?.extrato &&
        e1?.concentracao == e2?.concentracao &&
        e1?.dose == e2?.dose &&
        e1?.quantasx == e2?.quantasx &&
        e1?.observacao == e2?.observacao &&
        e1?.assinatura == e2?.assinatura &&
        e1?.paciente == e2?.paciente &&
        e1?.creatoruser == e2?.creatoruser &&
        listEquality.equals(e1?.permissao, e2?.permissao) &&
        e1?.createdTime == e2?.createdTime &&
        e1?.colaborador == e2?.colaborador &&
        e1?.photocolab == e2?.photocolab &&
        e1?.crm == e2?.crm;
  }

  @override
  int hash(TratamentoRecord? e) => const ListEquality().hash([
        e?.medico,
        e?.extrato,
        e?.concentracao,
        e?.dose,
        e?.quantasx,
        e?.observacao,
        e?.assinatura,
        e?.paciente,
        e?.creatoruser,
        e?.permissao,
        e?.createdTime,
        e?.colaborador,
        e?.photocolab,
        e?.crm
      ]);

  @override
  bool isValidKey(Object? o) => o is TratamentoRecord;
}
