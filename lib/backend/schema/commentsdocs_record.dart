import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsdocsRecord extends FirestoreRecord {
  CommentsdocsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "docs_user" field.
  DocumentReference? _docsUser;
  DocumentReference? get docsUser => _docsUser;
  bool hasDocsUser() => _docsUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _docsUser = snapshotData['docs_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _likes = getDataList(snapshotData['likes']);
    _comment = snapshotData['comment'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('commentsdocs')
          : FirebaseFirestore.instance.collectionGroup('commentsdocs');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('commentsdocs').doc(id);

  static Stream<CommentsdocsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsdocsRecord.fromSnapshot(s));

  static Future<CommentsdocsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsdocsRecord.fromSnapshot(s));

  static CommentsdocsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsdocsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsdocsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsdocsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsdocsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsdocsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsdocsRecordData({
  DocumentReference? docsUser,
  DateTime? timePosted,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'docs_user': docsUser,
      'time_posted': timePosted,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsdocsRecordDocumentEquality
    implements Equality<CommentsdocsRecord> {
  const CommentsdocsRecordDocumentEquality();

  @override
  bool equals(CommentsdocsRecord? e1, CommentsdocsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.docsUser == e2?.docsUser &&
        e1?.timePosted == e2?.timePosted &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(CommentsdocsRecord? e) => const ListEquality()
      .hash([e?.docsUser, e?.timePosted, e?.likes, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is CommentsdocsRecord;
}
