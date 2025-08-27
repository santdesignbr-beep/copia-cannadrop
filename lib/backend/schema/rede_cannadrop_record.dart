import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RedeCannadropRecord extends FirestoreRecord {
  RedeCannadropRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "Qualidadedosono" field.
  double? _qualidadedosono;
  double get qualidadedosono => _qualidadedosono ?? 0.0;
  bool hasQualidadedosono() => _qualidadedosono != null;

  // "Energia" field.
  double? _energia;
  double get energia => _energia ?? 0.0;
  bool hasEnergia() => _energia != null;

  // "Recuperacao" field.
  double? _recuperacao;
  double get recuperacao => _recuperacao ?? 0.0;
  bool hasRecuperacao() => _recuperacao != null;

  // "Digestao" field.
  double? _digestao;
  double get digestao => _digestao ?? 0.0;
  bool hasDigestao() => _digestao != null;

  // "concentracao" field.
  double? _concentracao;
  double get concentracao => _concentracao ?? 0.0;
  bool hasConcentracao() => _concentracao != null;

  // "forca" field.
  double? _forca;
  double get forca => _forca ?? 0.0;
  bool hasForca() => _forca != null;

  // "coordenacao" field.
  double? _coordenacao;
  double get coordenacao => _coordenacao ?? 0.0;
  bool hasCoordenacao() => _coordenacao != null;

  // "ansiedade" field.
  double? _ansiedade;
  double get ansiedade => _ansiedade ?? 0.0;
  bool hasAnsiedade() => _ansiedade != null;

  // "apetite" field.
  double? _apetite;
  double get apetite => _apetite ?? 0.0;
  bool hasApetite() => _apetite != null;

  // "peso" field.
  String? _peso;
  String get peso => _peso ?? '';
  bool hasPeso() => _peso != null;

  // "praticaatividade" field.
  String? _praticaatividade;
  String get praticaatividade => _praticaatividade ?? '';
  bool hasPraticaatividade() => _praticaatividade != null;

  // "altura" field.
  String? _altura;
  String get altura => _altura ?? '';
  bool hasAltura() => _altura != null;

  // "rendamensal" field.
  String? _rendamensal;
  String get rendamensal => _rendamensal ?? '';
  bool hasRendamensal() => _rendamensal != null;

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  // "stress" field.
  double? _stress;
  double get stress => _stress ?? 0.0;
  bool hasStress() => _stress != null;

  // "dor" field.
  double? _dor;
  double get dor => _dor ?? 0.0;
  bool hasDor() => _dor != null;

  // "voceseconsiera" field.
  double? _voceseconsiera;
  double get voceseconsiera => _voceseconsiera ?? 0.0;
  bool hasVoceseconsiera() => _voceseconsiera != null;

  // "tipodeproblema" field.
  String? _tipodeproblema;
  String get tipodeproblema => _tipodeproblema ?? '';
  bool hasTipodeproblema() => _tipodeproblema != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "datecreated" field.
  DateTime? _datecreated;
  DateTime? get datecreated => _datecreated;
  bool hasDatecreated() => _datecreated != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _foto = snapshotData['Foto'] as String?;
    _qualidadedosono = castToType<double>(snapshotData['Qualidadedosono']);
    _energia = castToType<double>(snapshotData['Energia']);
    _recuperacao = castToType<double>(snapshotData['Recuperacao']);
    _digestao = castToType<double>(snapshotData['Digestao']);
    _concentracao = castToType<double>(snapshotData['concentracao']);
    _forca = castToType<double>(snapshotData['forca']);
    _coordenacao = castToType<double>(snapshotData['coordenacao']);
    _ansiedade = castToType<double>(snapshotData['ansiedade']);
    _apetite = castToType<double>(snapshotData['apetite']);
    _peso = snapshotData['peso'] as String?;
    _praticaatividade = snapshotData['praticaatividade'] as String?;
    _altura = snapshotData['altura'] as String?;
    _rendamensal = snapshotData['rendamensal'] as String?;
    _obs = snapshotData['obs'] as String?;
    _stress = castToType<double>(snapshotData['stress']);
    _dor = castToType<double>(snapshotData['dor']);
    _voceseconsiera = castToType<double>(snapshotData['voceseconsiera']);
    _tipodeproblema = snapshotData['tipodeproblema'] as String?;
    _userid = snapshotData['userid'] as DocumentReference?;
    _datecreated = snapshotData['datecreated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RedeCannadrop');

  static Stream<RedeCannadropRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RedeCannadropRecord.fromSnapshot(s));

  static Future<RedeCannadropRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RedeCannadropRecord.fromSnapshot(s));

  static RedeCannadropRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RedeCannadropRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RedeCannadropRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RedeCannadropRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RedeCannadropRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RedeCannadropRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRedeCannadropRecordData({
  String? nome,
  String? foto,
  double? qualidadedosono,
  double? energia,
  double? recuperacao,
  double? digestao,
  double? concentracao,
  double? forca,
  double? coordenacao,
  double? ansiedade,
  double? apetite,
  String? peso,
  String? praticaatividade,
  String? altura,
  String? rendamensal,
  String? obs,
  double? stress,
  double? dor,
  double? voceseconsiera,
  String? tipodeproblema,
  DocumentReference? userid,
  DateTime? datecreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Foto': foto,
      'Qualidadedosono': qualidadedosono,
      'Energia': energia,
      'Recuperacao': recuperacao,
      'Digestao': digestao,
      'concentracao': concentracao,
      'forca': forca,
      'coordenacao': coordenacao,
      'ansiedade': ansiedade,
      'apetite': apetite,
      'peso': peso,
      'praticaatividade': praticaatividade,
      'altura': altura,
      'rendamensal': rendamensal,
      'obs': obs,
      'stress': stress,
      'dor': dor,
      'voceseconsiera': voceseconsiera,
      'tipodeproblema': tipodeproblema,
      'userid': userid,
      'datecreated': datecreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class RedeCannadropRecordDocumentEquality
    implements Equality<RedeCannadropRecord> {
  const RedeCannadropRecordDocumentEquality();

  @override
  bool equals(RedeCannadropRecord? e1, RedeCannadropRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.foto == e2?.foto &&
        e1?.qualidadedosono == e2?.qualidadedosono &&
        e1?.energia == e2?.energia &&
        e1?.recuperacao == e2?.recuperacao &&
        e1?.digestao == e2?.digestao &&
        e1?.concentracao == e2?.concentracao &&
        e1?.forca == e2?.forca &&
        e1?.coordenacao == e2?.coordenacao &&
        e1?.ansiedade == e2?.ansiedade &&
        e1?.apetite == e2?.apetite &&
        e1?.peso == e2?.peso &&
        e1?.praticaatividade == e2?.praticaatividade &&
        e1?.altura == e2?.altura &&
        e1?.rendamensal == e2?.rendamensal &&
        e1?.obs == e2?.obs &&
        e1?.stress == e2?.stress &&
        e1?.dor == e2?.dor &&
        e1?.voceseconsiera == e2?.voceseconsiera &&
        e1?.tipodeproblema == e2?.tipodeproblema &&
        e1?.userid == e2?.userid &&
        e1?.datecreated == e2?.datecreated;
  }

  @override
  int hash(RedeCannadropRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.foto,
        e?.qualidadedosono,
        e?.energia,
        e?.recuperacao,
        e?.digestao,
        e?.concentracao,
        e?.forca,
        e?.coordenacao,
        e?.ansiedade,
        e?.apetite,
        e?.peso,
        e?.praticaatividade,
        e?.altura,
        e?.rendamensal,
        e?.obs,
        e?.stress,
        e?.dor,
        e?.voceseconsiera,
        e?.tipodeproblema,
        e?.userid,
        e?.datecreated
      ]);

  @override
  bool isValidKey(Object? o) => o is RedeCannadropRecord;
}
