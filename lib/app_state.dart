import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _cartsum = await secureStorage.getDouble('ff_cartsum') ?? _cartsum;
    });
    await _safeInitAsync(() async {
      _color = await secureStorage.getString('ff_color') ?? _color;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  double _cartsum = 0.0;
  double get cartsum => _cartsum;
  set cartsum(double value) {
    _cartsum = value;
    secureStorage.setDouble('ff_cartsum', value);
  }

  void deleteCartsum() {
    secureStorage.delete(key: 'ff_cartsum');
  }

  int _size = 0;
  int get size => _size;
  set size(int value) {
    _size = value;
  }

  String _color = '';
  String get color => _color;
  set color(String value) {
    _color = value;
    secureStorage.setString('ff_color', value);
  }

  void deleteColor() {
    secureStorage.delete(key: 'ff_color');
  }

  bool _searchonof = false;
  bool get searchonof => _searchonof;
  set searchonof(bool value) {
    _searchonof = value;
  }

  String _editimagepaciente = '';
  String get editimagepaciente => _editimagepaciente;
  set editimagepaciente(String value) {
    _editimagepaciente = value;
  }

  String _imagecolaborador = '';
  String get imagecolaborador => _imagecolaborador;
  set imagecolaborador(String value) {
    _imagecolaborador = value;
  }

  String _tempProfilePic = '';
  String get tempProfilePic => _tempProfilePic;
  set tempProfilePic(String value) {
    _tempProfilePic = value;
  }

  bool _messageReaction = false;
  bool get messageReaction => _messageReaction;
  set messageReaction(bool value) {
    _messageReaction = value;
  }

  String _messageFocusText = '';
  String get messageFocusText => _messageFocusText;
  set messageFocusText(String value) {
    _messageFocusText = value;
  }

  bool _messageFocusColor = false;
  bool get messageFocusColor => _messageFocusColor;
  set messageFocusColor(bool value) {
    _messageFocusColor = value;
  }

  bool _searchuser = false;
  bool get searchuser => _searchuser;
  set searchuser(bool value) {
    _searchuser = value;
  }

  List<DocumentReference> _tempUserList = [];
  List<DocumentReference> get tempUserList => _tempUserList;
  set tempUserList(List<DocumentReference> value) {
    _tempUserList = value;
  }

  void addToTempUserList(DocumentReference value) {
    tempUserList.add(value);
  }

  void removeFromTempUserList(DocumentReference value) {
    tempUserList.remove(value);
  }

  void removeAtIndexFromTempUserList(int index) {
    tempUserList.removeAt(index);
  }

  void updateTempUserListAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    tempUserList[index] = updateFn(_tempUserList[index]);
  }

  void insertAtIndexInTempUserList(int index, DocumentReference value) {
    tempUserList.insert(index, value);
  }

  DocumentReference? _tempUserRecord =
      FirebaseFirestore.instance.doc('/user/uid');
  DocumentReference? get tempUserRecord => _tempUserRecord;
  set tempUserRecord(DocumentReference? value) {
    _tempUserRecord = value;
  }

  bool _showCommentField = false;
  bool get showCommentField => _showCommentField;
  set showCommentField(bool value) {
    _showCommentField = value;
  }

  List<DocumentReference> _emptyList = [];
  List<DocumentReference> get emptyList => _emptyList;
  set emptyList(List<DocumentReference> value) {
    _emptyList = value;
  }

  void addToEmptyList(DocumentReference value) {
    emptyList.add(value);
  }

  void removeFromEmptyList(DocumentReference value) {
    emptyList.remove(value);
  }

  void removeAtIndexFromEmptyList(int index) {
    emptyList.removeAt(index);
  }

  void updateEmptyListAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    emptyList[index] = updateFn(_emptyList[index]);
  }

  void insertAtIndexInEmptyList(int index, DocumentReference value) {
    emptyList.insert(index, value);
  }

  String _uploadPhoto = '';
  String get uploadPhoto => _uploadPhoto;
  set uploadPhoto(String value) {
    _uploadPhoto = value;
  }

  String _calltoactionurl = '';
  String get calltoactionurl => _calltoactionurl;
  set calltoactionurl(String value) {
    _calltoactionurl = value;
  }

  String _calltoactiontext = '';
  String get calltoactiontext => _calltoactiontext;
  set calltoactiontext(String value) {
    _calltoactiontext = value;
  }

  bool _calltoactionenabled = false;
  bool get calltoactionenabled => _calltoactionenabled;
  set calltoactionenabled(bool value) {
    _calltoactionenabled = value;
  }

  String _location = '';
  String get location => _location;
  set location(String value) {
    _location = value;
  }

  List<DocumentReference> _taggedUsers = [];
  List<DocumentReference> get taggedUsers => _taggedUsers;
  set taggedUsers(List<DocumentReference> value) {
    _taggedUsers = value;
  }

  void addToTaggedUsers(DocumentReference value) {
    taggedUsers.add(value);
  }

  void removeFromTaggedUsers(DocumentReference value) {
    taggedUsers.remove(value);
  }

  void removeAtIndexFromTaggedUsers(int index) {
    taggedUsers.removeAt(index);
  }

  void updateTaggedUsersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    taggedUsers[index] = updateFn(_taggedUsers[index]);
  }

  void insertAtIndexInTaggedUsers(int index, DocumentReference value) {
    taggedUsers.insert(index, value);
  }

  bool _showRecentSearch = false;
  bool get showRecentSearch => _showRecentSearch;
  set showRecentSearch(bool value) {
    _showRecentSearch = value;
  }

  String _imageLabels = '';
  String get imageLabels => _imageLabels;
  set imageLabels(String value) {
    _imageLabels = value;
  }

  String _currentSearch = '';
  String get currentSearch => _currentSearch;
  set currentSearch(String value) {
    _currentSearch = value;
  }

  bool _imageSearchDummyToggle = false;
  bool get imageSearchDummyToggle => _imageSearchDummyToggle;
  set imageSearchDummyToggle(bool value) {
    _imageSearchDummyToggle = value;
  }

  bool _novaConversaIniciada = false;
  bool get novaConversaIniciada => _novaConversaIniciada;
  set novaConversaIniciada(bool value) {
    _novaConversaIniciada = value;
  }

  String _pinverificado = '';
  String get pinverificado => _pinverificado;
  set pinverificado(String value) {
    _pinverificado = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
