import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColaboradorRecord extends FirestoreRecord {
  ColaboradorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "codigoacesso" field.
  String? _codigoacesso;
  String get codigoacesso => _codigoacesso ?? '';
  bool hasCodigoacesso() => _codigoacesso != null;

  // "regiao" field.
  String? _regiao;
  String get regiao => _regiao ?? '';
  bool hasRegiao() => _regiao != null;

  // "departamento" field.
  String? _departamento;
  String get departamento => _departamento ?? '';
  bool hasDepartamento() => _departamento != null;

  // "iduser" field.
  DocumentReference? _iduser;
  DocumentReference? get iduser => _iduser;
  bool hasIduser() => _iduser != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "Colaborador" field.
  bool? _colaborador;
  bool get colaborador => _colaborador ?? false;
  bool hasColaborador() => _colaborador != null;

  // "idpaciente" field.
  DocumentReference? _idpaciente;
  DocumentReference? get idpaciente => _idpaciente;
  bool hasIdpaciente() => _idpaciente != null;

  // "idcolaborador" field.
  DocumentReference? _idcolaborador;
  DocumentReference? get idcolaborador => _idcolaborador;
  bool hasIdcolaborador() => _idcolaborador != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _codigoacesso = snapshotData['codigoacesso'] as String?;
    _regiao = snapshotData['regiao'] as String?;
    _departamento = snapshotData['departamento'] as String?;
    _iduser = snapshotData['iduser'] as DocumentReference?;
    _imagem = snapshotData['imagem'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _colaborador = snapshotData['Colaborador'] as bool?;
    _idpaciente = snapshotData['idpaciente'] as DocumentReference?;
    _idcolaborador = snapshotData['idcolaborador'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Colaborador');

  static Stream<ColaboradorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ColaboradorRecord.fromSnapshot(s));

  static Future<ColaboradorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ColaboradorRecord.fromSnapshot(s));

  static ColaboradorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ColaboradorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ColaboradorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ColaboradorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ColaboradorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ColaboradorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createColaboradorRecordData({
  String? nome,
  String? codigoacesso,
  String? regiao,
  String? departamento,
  DocumentReference? iduser,
  String? imagem,
  bool? ativo,
  bool? colaborador,
  DocumentReference? idpaciente,
  DocumentReference? idcolaborador,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'codigoacesso': codigoacesso,
      'regiao': regiao,
      'departamento': departamento,
      'iduser': iduser,
      'imagem': imagem,
      'ativo': ativo,
      'Colaborador': colaborador,
      'idpaciente': idpaciente,
      'idcolaborador': idcolaborador,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ColaboradorRecordDocumentEquality implements Equality<ColaboradorRecord> {
  const ColaboradorRecordDocumentEquality();

  @override
  bool equals(ColaboradorRecord? e1, ColaboradorRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.codigoacesso == e2?.codigoacesso &&
        e1?.regiao == e2?.regiao &&
        e1?.departamento == e2?.departamento &&
        e1?.iduser == e2?.iduser &&
        e1?.imagem == e2?.imagem &&
        e1?.ativo == e2?.ativo &&
        e1?.colaborador == e2?.colaborador &&
        e1?.idpaciente == e2?.idpaciente &&
        e1?.idcolaborador == e2?.idcolaborador &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ColaboradorRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.codigoacesso,
        e?.regiao,
        e?.departamento,
        e?.iduser,
        e?.imagem,
        e?.ativo,
        e?.colaborador,
        e?.idpaciente,
        e?.idcolaborador,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ColaboradorRecord;
}
