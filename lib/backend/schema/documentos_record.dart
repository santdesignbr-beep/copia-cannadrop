import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentosRecord extends FirestoreRecord {
  DocumentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "categoria_nome" field.
  String? _categoriaNome;
  String get categoriaNome => _categoriaNome ?? '';
  bool hasCategoriaNome() => _categoriaNome != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "doc_imagens" field.
  List<String>? _docImagens;
  List<String> get docImagens => _docImagens ?? const [];
  bool hasDocImagens() => _docImagens != null;

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "allow_comments" field.
  bool? _allowComments;
  bool get allowComments => _allowComments ?? false;
  bool hasAllowComments() => _allowComments != null;

  // "allow_likes" field.
  bool? _allowLikes;
  bool get allowLikes => _allowLikes ?? false;
  bool hasAllowLikes() => _allowLikes != null;

  // "call_to_action_enabled" field.
  bool? _callToActionEnabled;
  bool get callToActionEnabled => _callToActionEnabled ?? false;
  bool hasCallToActionEnabled() => _callToActionEnabled != null;

  // "call_to_action_text" field.
  String? _callToActionText;
  String get callToActionText => _callToActionText ?? '';
  bool hasCallToActionText() => _callToActionText != null;

  // "call_to_action_link" field.
  String? _callToActionLink;
  String get callToActionLink => _callToActionLink ?? '';
  bool hasCallToActionLink() => _callToActionLink != null;

  // "tagged_users" field.
  List<DocumentReference>? _taggedUsers;
  List<DocumentReference> get taggedUsers => _taggedUsers ?? const [];
  bool hasTaggedUsers() => _taggedUsers != null;

  // "labels" field.
  String? _labels;
  String get labels => _labels ?? '';
  bool hasLabels() => _labels != null;

  // "deleted" field.
  bool? _deleted;
  bool get deleted => _deleted ?? false;
  bool hasDeleted() => _deleted != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "userfoto" field.
  String? _userfoto;
  String get userfoto => _userfoto ?? '';
  bool hasUserfoto() => _userfoto != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _categoriaNome = snapshotData['categoria_nome'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userid = snapshotData['userid'] as DocumentReference?;
    _docImagens = getDataList(snapshotData['doc_imagens']);
    _obs = snapshotData['obs'] as String?;
    _numComments = castToType<int>(snapshotData['num_comments']);
    _allowComments = snapshotData['allow_comments'] as bool?;
    _allowLikes = snapshotData['allow_likes'] as bool?;
    _callToActionEnabled = snapshotData['call_to_action_enabled'] as bool?;
    _callToActionText = snapshotData['call_to_action_text'] as String?;
    _callToActionLink = snapshotData['call_to_action_link'] as String?;
    _taggedUsers = getDataList(snapshotData['tagged_users']);
    _labels = snapshotData['labels'] as String?;
    _deleted = snapshotData['deleted'] as bool?;
    _username = snapshotData['username'] as String?;
    _likes = getDataList(snapshotData['likes']);
    _imagem = snapshotData['imagem'] as String?;
    _userfoto = snapshotData['userfoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documentos');

  static Stream<DocumentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentosRecord.fromSnapshot(s));

  static Future<DocumentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentosRecord.fromSnapshot(s));

  static DocumentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentosRecordData({
  String? nome,
  DocumentReference? categoria,
  String? categoriaNome,
  DateTime? createdTime,
  DocumentReference? userid,
  String? obs,
  int? numComments,
  bool? allowComments,
  bool? allowLikes,
  bool? callToActionEnabled,
  String? callToActionText,
  String? callToActionLink,
  String? labels,
  bool? deleted,
  String? username,
  String? imagem,
  String? userfoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'categoria': categoria,
      'categoria_nome': categoriaNome,
      'created_time': createdTime,
      'userid': userid,
      'obs': obs,
      'num_comments': numComments,
      'allow_comments': allowComments,
      'allow_likes': allowLikes,
      'call_to_action_enabled': callToActionEnabled,
      'call_to_action_text': callToActionText,
      'call_to_action_link': callToActionLink,
      'labels': labels,
      'deleted': deleted,
      'username': username,
      'imagem': imagem,
      'userfoto': userfoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentosRecordDocumentEquality implements Equality<DocumentosRecord> {
  const DocumentosRecordDocumentEquality();

  @override
  bool equals(DocumentosRecord? e1, DocumentosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.categoria == e2?.categoria &&
        e1?.categoriaNome == e2?.categoriaNome &&
        e1?.createdTime == e2?.createdTime &&
        e1?.userid == e2?.userid &&
        listEquality.equals(e1?.docImagens, e2?.docImagens) &&
        e1?.obs == e2?.obs &&
        e1?.numComments == e2?.numComments &&
        e1?.allowComments == e2?.allowComments &&
        e1?.allowLikes == e2?.allowLikes &&
        e1?.callToActionEnabled == e2?.callToActionEnabled &&
        e1?.callToActionText == e2?.callToActionText &&
        e1?.callToActionLink == e2?.callToActionLink &&
        listEquality.equals(e1?.taggedUsers, e2?.taggedUsers) &&
        e1?.labels == e2?.labels &&
        e1?.deleted == e2?.deleted &&
        e1?.username == e2?.username &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.imagem == e2?.imagem &&
        e1?.userfoto == e2?.userfoto;
  }

  @override
  int hash(DocumentosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.categoria,
        e?.categoriaNome,
        e?.createdTime,
        e?.userid,
        e?.docImagens,
        e?.obs,
        e?.numComments,
        e?.allowComments,
        e?.allowLikes,
        e?.callToActionEnabled,
        e?.callToActionText,
        e?.callToActionLink,
        e?.taggedUsers,
        e?.labels,
        e?.deleted,
        e?.username,
        e?.likes,
        e?.imagem,
        e?.userfoto
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentosRecord;
}
