import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "datanascimento" field.
  String? _datanascimento;
  String get datanascimento => _datanascimento ?? '';
  bool hasDatanascimento() => _datanascimento != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "rg" field.
  String? _rg;
  String get rg => _rg ?? '';
  bool hasRg() => _rg != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "estadocivil" field.
  String? _estadocivil;
  String get estadocivil => _estadocivil ?? '';
  bool hasEstadocivil() => _estadocivil != null;

  // "nacionalidade" field.
  String? _nacionalidade;
  String get nacionalidade => _nacionalidade ?? '';
  bool hasNacionalidade() => _nacionalidade != null;

  // "profissao" field.
  String? _profissao;
  String get profissao => _profissao ?? '';
  bool hasProfissao() => _profissao != null;

  // "assinatura" field.
  String? _assinatura;
  String get assinatura => _assinatura ?? '';
  bool hasAssinatura() => _assinatura != null;

  // "assautorizacao" field.
  String? _assautorizacao;
  String get assautorizacao => _assautorizacao ?? '';
  bool hasAssautorizacao() => _assautorizacao != null;

  // "asstermostitular" field.
  String? _asstermostitular;
  String get asstermostitular => _asstermostitular ?? '';
  bool hasAsstermostitular() => _asstermostitular != null;

  // "asstermoscannadrop" field.
  String? _asstermoscannadrop;
  String get asstermoscannadrop => _asstermoscannadrop ?? '';
  bool hasAsstermoscannadrop() => _asstermoscannadrop != null;

  // "regiao" field.
  String? _regiao;
  String get regiao => _regiao ?? '';
  bool hasRegiao() => _regiao != null;

  // "horario" field.
  String? _horario;
  String get horario => _horario ?? '';
  bool hasHorario() => _horario != null;

  // "Colaborador" field.
  bool? _colaborador;
  bool get colaborador => _colaborador ?? false;
  bool hasColaborador() => _colaborador != null;

  // "Menor" field.
  bool? _menor;
  bool get menor => _menor ?? false;
  bool hasMenor() => _menor != null;

  // "Paciente" field.
  bool? _paciente;
  bool get paciente => _paciente ?? false;
  bool hasPaciente() => _paciente != null;

  // "idpaciente" field.
  DocumentReference? _idpaciente;
  DocumentReference? get idpaciente => _idpaciente;
  bool hasIdpaciente() => _idpaciente != null;

  // "idcolaborador" field.
  DocumentReference? _idcolaborador;
  DocumentReference? get idcolaborador => _idcolaborador;
  bool hasIdcolaborador() => _idcolaborador != null;

  // "permissao" field.
  String? _permissao;
  String get permissao => _permissao ?? '';
  bool hasPermissao() => _permissao != null;

  // "atendido" field.
  bool? _atendido;
  bool get atendido => _atendido ?? false;
  bool hasAtendido() => _atendido != null;

  // "chats" field.
  List<DocumentReference>? _chats;
  List<DocumentReference> get chats => _chats ?? const [];
  bool hasChats() => _chats != null;

  // "consulta" field.
  bool? _consulta;
  bool get consulta => _consulta ?? false;
  bool hasConsulta() => _consulta != null;

  // "tratamento" field.
  bool? _tratamento;
  bool get tratamento => _tratamento ?? false;
  bool hasTratamento() => _tratamento != null;

  // "usermenor" field.
  DocumentReference? _usermenor;
  DocumentReference? get usermenor => _usermenor;
  bool hasUsermenor() => _usermenor != null;

  // "dataautorizacao" field.
  DateTime? _dataautorizacao;
  DateTime? get dataautorizacao => _dataautorizacao;
  bool hasDataautorizacao() => _dataautorizacao != null;

  // "CID" field.
  String? _cid;
  String get cid => _cid ?? '';
  bool hasCid() => _cid != null;

  // "Patologia" field.
  String? _patologia;
  String get patologia => _patologia ?? '';
  bool hasPatologia() => _patologia != null;

  // "unreadNotifications" field.
  List<DocumentReference>? _unreadNotifications;
  List<DocumentReference> get unreadNotifications =>
      _unreadNotifications ?? const [];
  bool hasUnreadNotifications() => _unreadNotifications != null;

  // "consultapermissao" field.
  String? _consultapermissao;
  String get consultapermissao => _consultapermissao ?? '';
  bool hasConsultapermissao() => _consultapermissao != null;

  // "tratamentopermissao" field.
  String? _tratamentopermissao;
  String get tratamentopermissao => _tratamentopermissao ?? '';
  bool hasTratamentopermissao() => _tratamentopermissao != null;

  // "meuspacientes" field.
  bool? _meuspacientes;
  bool get meuspacientes => _meuspacientes ?? false;
  bool hasMeuspacientes() => _meuspacientes != null;

  // "meuschats" field.
  List<String>? _meuschats;
  List<String> get meuschats => _meuschats ?? const [];
  bool hasMeuschats() => _meuschats != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "meuscolab" field.
  List<String>? _meuscolab;
  List<String> get meuscolab => _meuscolab ?? const [];
  bool hasMeuscolab() => _meuscolab != null;

  // "agendamento" field.
  bool? _agendamento;
  bool get agendamento => _agendamento ?? false;
  bool hasAgendamento() => _agendamento != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "post_photo" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "list_meuspacientes" field.
  List<String>? _listMeuspacientes;
  List<String> get listMeuspacientes => _listMeuspacientes ?? const [];
  bool hasListMeuspacientes() => _listMeuspacientes != null;

  // "lista_meuspacientes" field.
  List<DocumentReference>? _listaMeuspacientes;
  List<DocumentReference> get listaMeuspacientes =>
      _listaMeuspacientes ?? const [];
  bool hasListaMeuspacientes() => _listaMeuspacientes != null;

  // "sobrenome" field.
  String? _sobrenome;
  String get sobrenome => _sobrenome ?? '';
  bool hasSobrenome() => _sobrenome != null;

  // "consulta_acolhedor" field.
  DocumentReference? _consultaAcolhedor;
  DocumentReference? get consultaAcolhedor => _consultaAcolhedor;
  bool hasConsultaAcolhedor() => _consultaAcolhedor != null;

  // "consultaacolhedor" field.
  bool? _consultaacolhedor;
  bool get consultaacolhedor => _consultaacolhedor ?? false;
  bool hasConsultaacolhedor() => _consultaacolhedor != null;

  // "meucolaborador" field.
  String? _meucolaborador;
  String get meucolaborador => _meucolaborador ?? '';
  bool hasMeucolaborador() => _meucolaborador != null;

  // "solicitacao" field.
  bool? _solicitacao;
  bool get solicitacao => _solicitacao ?? false;
  bool hasSolicitacao() => _solicitacao != null;

  // "consultaagendada" field.
  bool? _consultaagendada;
  bool get consultaagendada => _consultaagendada ?? false;
  bool hasConsultaagendada() => _consultaagendada != null;

  // "horarioconsulta" field.
  String? _horarioconsulta;
  String get horarioconsulta => _horarioconsulta ?? '';
  bool hasHorarioconsulta() => _horarioconsulta != null;

  // "consultaatendia" field.
  bool? _consultaatendia;
  bool get consultaatendia => _consultaatendia ?? false;
  bool hasConsultaatendia() => _consultaatendia != null;

  // "agendamentoatendido" field.
  bool? _agendamentoatendido;
  bool get agendamentoatendido => _agendamentoatendido ?? false;
  bool hasAgendamentoatendido() => _agendamentoatendido != null;

  // "redecannadrop" field.
  bool? _redecannadrop;
  bool get redecannadrop => _redecannadrop ?? false;
  bool hasRedecannadrop() => _redecannadrop != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _datanascimento = snapshotData['datanascimento'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _numero = snapshotData['numero'] as String?;
    _rg = snapshotData['rg'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _rua = snapshotData['rua'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _estado = snapshotData['estado'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _estadocivil = snapshotData['estadocivil'] as String?;
    _nacionalidade = snapshotData['nacionalidade'] as String?;
    _profissao = snapshotData['profissao'] as String?;
    _assinatura = snapshotData['assinatura'] as String?;
    _assautorizacao = snapshotData['assautorizacao'] as String?;
    _asstermostitular = snapshotData['asstermostitular'] as String?;
    _asstermoscannadrop = snapshotData['asstermoscannadrop'] as String?;
    _regiao = snapshotData['regiao'] as String?;
    _horario = snapshotData['horario'] as String?;
    _colaborador = snapshotData['Colaborador'] as bool?;
    _menor = snapshotData['Menor'] as bool?;
    _paciente = snapshotData['Paciente'] as bool?;
    _idpaciente = snapshotData['idpaciente'] as DocumentReference?;
    _idcolaborador = snapshotData['idcolaborador'] as DocumentReference?;
    _permissao = snapshotData['permissao'] as String?;
    _atendido = snapshotData['atendido'] as bool?;
    _chats = getDataList(snapshotData['chats']);
    _consulta = snapshotData['consulta'] as bool?;
    _tratamento = snapshotData['tratamento'] as bool?;
    _usermenor = snapshotData['usermenor'] as DocumentReference?;
    _dataautorizacao = snapshotData['dataautorizacao'] as DateTime?;
    _cid = snapshotData['CID'] as String?;
    _patologia = snapshotData['Patologia'] as String?;
    _unreadNotifications = getDataList(snapshotData['unreadNotifications']);
    _consultapermissao = snapshotData['consultapermissao'] as String?;
    _tratamentopermissao = snapshotData['tratamentopermissao'] as String?;
    _meuspacientes = snapshotData['meuspacientes'] as bool?;
    _meuschats = getDataList(snapshotData['meuschats']);
    _admin = snapshotData['admin'] as bool?;
    _meuscolab = getDataList(snapshotData['meuscolab']);
    _agendamento = snapshotData['agendamento'] as bool?;
    _username = snapshotData['username'] as String?;
    _postPhoto = snapshotData['post_photo'] as String?;
    _listMeuspacientes = getDataList(snapshotData['list_meuspacientes']);
    _listaMeuspacientes = getDataList(snapshotData['lista_meuspacientes']);
    _sobrenome = snapshotData['sobrenome'] as String?;
    _consultaAcolhedor =
        snapshotData['consulta_acolhedor'] as DocumentReference?;
    _consultaacolhedor = snapshotData['consultaacolhedor'] as bool?;
    _meucolaborador = snapshotData['meucolaborador'] as String?;
    _solicitacao = snapshotData['solicitacao'] as bool?;
    _consultaagendada = snapshotData['consultaagendada'] as bool?;
    _horarioconsulta = snapshotData['horarioconsulta'] as String?;
    _consultaatendia = snapshotData['consultaatendia'] as bool?;
    _agendamentoatendido = snapshotData['agendamentoatendido'] as bool?;
    _redecannadrop = snapshotData['redecannadrop'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? datanascimento,
  String? cep,
  String? cidade,
  String? numero,
  String? rg,
  String? cpf,
  String? rua,
  String? complemento,
  String? estado,
  String? bairro,
  String? estadocivil,
  String? nacionalidade,
  String? profissao,
  String? assinatura,
  String? assautorizacao,
  String? asstermostitular,
  String? asstermoscannadrop,
  String? regiao,
  String? horario,
  bool? colaborador,
  bool? menor,
  bool? paciente,
  DocumentReference? idpaciente,
  DocumentReference? idcolaborador,
  String? permissao,
  bool? atendido,
  bool? consulta,
  bool? tratamento,
  DocumentReference? usermenor,
  DateTime? dataautorizacao,
  String? cid,
  String? patologia,
  String? consultapermissao,
  String? tratamentopermissao,
  bool? meuspacientes,
  bool? admin,
  bool? agendamento,
  String? username,
  String? postPhoto,
  String? sobrenome,
  DocumentReference? consultaAcolhedor,
  bool? consultaacolhedor,
  String? meucolaborador,
  bool? solicitacao,
  bool? consultaagendada,
  String? horarioconsulta,
  bool? consultaatendia,
  bool? agendamentoatendido,
  bool? redecannadrop,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'datanascimento': datanascimento,
      'CEP': cep,
      'cidade': cidade,
      'numero': numero,
      'rg': rg,
      'cpf': cpf,
      'rua': rua,
      'complemento': complemento,
      'estado': estado,
      'bairro': bairro,
      'estadocivil': estadocivil,
      'nacionalidade': nacionalidade,
      'profissao': profissao,
      'assinatura': assinatura,
      'assautorizacao': assautorizacao,
      'asstermostitular': asstermostitular,
      'asstermoscannadrop': asstermoscannadrop,
      'regiao': regiao,
      'horario': horario,
      'Colaborador': colaborador,
      'Menor': menor,
      'Paciente': paciente,
      'idpaciente': idpaciente,
      'idcolaborador': idcolaborador,
      'permissao': permissao,
      'atendido': atendido,
      'consulta': consulta,
      'tratamento': tratamento,
      'usermenor': usermenor,
      'dataautorizacao': dataautorizacao,
      'CID': cid,
      'Patologia': patologia,
      'consultapermissao': consultapermissao,
      'tratamentopermissao': tratamentopermissao,
      'meuspacientes': meuspacientes,
      'admin': admin,
      'agendamento': agendamento,
      'username': username,
      'post_photo': postPhoto,
      'sobrenome': sobrenome,
      'consulta_acolhedor': consultaAcolhedor,
      'consultaacolhedor': consultaacolhedor,
      'meucolaborador': meucolaborador,
      'solicitacao': solicitacao,
      'consultaagendada': consultaagendada,
      'horarioconsulta': horarioconsulta,
      'consultaatendia': consultaatendia,
      'agendamentoatendido': agendamentoatendido,
      'redecannadrop': redecannadrop,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.datanascimento == e2?.datanascimento &&
        e1?.cep == e2?.cep &&
        e1?.cidade == e2?.cidade &&
        e1?.numero == e2?.numero &&
        e1?.rg == e2?.rg &&
        e1?.cpf == e2?.cpf &&
        e1?.rua == e2?.rua &&
        e1?.complemento == e2?.complemento &&
        e1?.estado == e2?.estado &&
        e1?.bairro == e2?.bairro &&
        e1?.estadocivil == e2?.estadocivil &&
        e1?.nacionalidade == e2?.nacionalidade &&
        e1?.profissao == e2?.profissao &&
        e1?.assinatura == e2?.assinatura &&
        e1?.assautorizacao == e2?.assautorizacao &&
        e1?.asstermostitular == e2?.asstermostitular &&
        e1?.asstermoscannadrop == e2?.asstermoscannadrop &&
        e1?.regiao == e2?.regiao &&
        e1?.horario == e2?.horario &&
        e1?.colaborador == e2?.colaborador &&
        e1?.menor == e2?.menor &&
        e1?.paciente == e2?.paciente &&
        e1?.idpaciente == e2?.idpaciente &&
        e1?.idcolaborador == e2?.idcolaborador &&
        e1?.permissao == e2?.permissao &&
        e1?.atendido == e2?.atendido &&
        listEquality.equals(e1?.chats, e2?.chats) &&
        e1?.consulta == e2?.consulta &&
        e1?.tratamento == e2?.tratamento &&
        e1?.usermenor == e2?.usermenor &&
        e1?.dataautorizacao == e2?.dataautorizacao &&
        e1?.cid == e2?.cid &&
        e1?.patologia == e2?.patologia &&
        listEquality.equals(e1?.unreadNotifications, e2?.unreadNotifications) &&
        e1?.consultapermissao == e2?.consultapermissao &&
        e1?.tratamentopermissao == e2?.tratamentopermissao &&
        e1?.meuspacientes == e2?.meuspacientes &&
        listEquality.equals(e1?.meuschats, e2?.meuschats) &&
        e1?.admin == e2?.admin &&
        listEquality.equals(e1?.meuscolab, e2?.meuscolab) &&
        e1?.agendamento == e2?.agendamento &&
        e1?.username == e2?.username &&
        e1?.postPhoto == e2?.postPhoto &&
        listEquality.equals(e1?.listMeuspacientes, e2?.listMeuspacientes) &&
        listEquality.equals(e1?.listaMeuspacientes, e2?.listaMeuspacientes) &&
        e1?.sobrenome == e2?.sobrenome &&
        e1?.consultaAcolhedor == e2?.consultaAcolhedor &&
        e1?.consultaacolhedor == e2?.consultaacolhedor &&
        e1?.meucolaborador == e2?.meucolaborador &&
        e1?.solicitacao == e2?.solicitacao &&
        e1?.consultaagendada == e2?.consultaagendada &&
        e1?.horarioconsulta == e2?.horarioconsulta &&
        e1?.consultaatendia == e2?.consultaatendia &&
        e1?.agendamentoatendido == e2?.agendamentoatendido &&
        e1?.redecannadrop == e2?.redecannadrop;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.datanascimento,
        e?.cep,
        e?.cidade,
        e?.numero,
        e?.rg,
        e?.cpf,
        e?.rua,
        e?.complemento,
        e?.estado,
        e?.bairro,
        e?.estadocivil,
        e?.nacionalidade,
        e?.profissao,
        e?.assinatura,
        e?.assautorizacao,
        e?.asstermostitular,
        e?.asstermoscannadrop,
        e?.regiao,
        e?.horario,
        e?.colaborador,
        e?.menor,
        e?.paciente,
        e?.idpaciente,
        e?.idcolaborador,
        e?.permissao,
        e?.atendido,
        e?.chats,
        e?.consulta,
        e?.tratamento,
        e?.usermenor,
        e?.dataautorizacao,
        e?.cid,
        e?.patologia,
        e?.unreadNotifications,
        e?.consultapermissao,
        e?.tratamentopermissao,
        e?.meuspacientes,
        e?.meuschats,
        e?.admin,
        e?.meuscolab,
        e?.agendamento,
        e?.username,
        e?.postPhoto,
        e?.listMeuspacientes,
        e?.listaMeuspacientes,
        e?.sobrenome,
        e?.consultaAcolhedor,
        e?.consultaacolhedor,
        e?.meucolaborador,
        e?.solicitacao,
        e?.consultaagendada,
        e?.horarioconsulta,
        e?.consultaatendia,
        e?.agendamentoatendido,
        e?.redecannadrop
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
