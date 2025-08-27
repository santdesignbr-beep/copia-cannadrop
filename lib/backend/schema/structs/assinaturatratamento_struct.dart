// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssinaturatratamentoStruct extends FFFirebaseStruct {
  AssinaturatratamentoStruct({
    AssinaturatratamentoStruct? assinatura,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _assinatura = assinatura,
        super(firestoreUtilData);

  // "assinatura" field.
  AssinaturatratamentoStruct? _assinatura;
  AssinaturatratamentoStruct get assinatura =>
      _assinatura ?? AssinaturatratamentoStruct();
  set assinatura(AssinaturatratamentoStruct? val) => _assinatura = val;

  void updateAssinatura(Function(AssinaturatratamentoStruct) updateFn) {
    updateFn(_assinatura ??= AssinaturatratamentoStruct());
  }

  bool hasAssinatura() => _assinatura != null;

  static AssinaturatratamentoStruct fromMap(Map<String, dynamic> data) =>
      AssinaturatratamentoStruct(
        assinatura: data['assinatura'] is AssinaturatratamentoStruct
            ? data['assinatura']
            : AssinaturatratamentoStruct.maybeFromMap(data['assinatura']),
      );

  static AssinaturatratamentoStruct? maybeFromMap(dynamic data) => data is Map
      ? AssinaturatratamentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assinatura': _assinatura?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assinatura': serializeParam(
          _assinatura,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AssinaturatratamentoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AssinaturatratamentoStruct(
        assinatura: deserializeStructParam(
          data['assinatura'],
          ParamType.DataStruct,
          false,
          structBuilder: AssinaturatratamentoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AssinaturatratamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssinaturatratamentoStruct &&
        assinatura == other.assinatura;
  }

  @override
  int get hashCode => const ListEquality().hash([assinatura]);
}

AssinaturatratamentoStruct createAssinaturatratamentoStruct({
  AssinaturatratamentoStruct? assinatura,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AssinaturatratamentoStruct(
      assinatura: assinatura ??
          (clearUnsetFields ? AssinaturatratamentoStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AssinaturatratamentoStruct? updateAssinaturatratamentoStruct(
  AssinaturatratamentoStruct? assinaturatratamento, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    assinaturatratamento
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAssinaturatratamentoStructData(
  Map<String, dynamic> firestoreData,
  AssinaturatratamentoStruct? assinaturatratamento,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (assinaturatratamento == null) {
    return;
  }
  if (assinaturatratamento.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && assinaturatratamento.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final assinaturatratamentoData =
      getAssinaturatratamentoFirestoreData(assinaturatratamento, forFieldValue);
  final nestedData =
      assinaturatratamentoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      assinaturatratamento.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAssinaturatratamentoFirestoreData(
  AssinaturatratamentoStruct? assinaturatratamento, [
  bool forFieldValue = false,
]) {
  if (assinaturatratamento == null) {
    return {};
  }
  final firestoreData = mapToFirestore(assinaturatratamento.toMap());

  // Handle nested data for "assinatura" field.
  addAssinaturatratamentoStructData(
    firestoreData,
    assinaturatratamento.hasAssinatura()
        ? assinaturatratamento.assinatura
        : null,
    'assinatura',
    forFieldValue,
  );

  // Add any Firestore field values
  assinaturatratamento.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAssinaturatratamentoListFirestoreData(
  List<AssinaturatratamentoStruct>? assinaturatratamentos,
) =>
    assinaturatratamentos
        ?.map((e) => getAssinaturatratamentoFirestoreData(e, true))
        .toList() ??
    [];
