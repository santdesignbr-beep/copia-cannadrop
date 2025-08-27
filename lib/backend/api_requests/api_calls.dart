import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EmailNotificationsCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "CANNADROP",
  "subject": "Código de Verificação",
  "from": "lucas@santdesign.com.br",
  "reply_to": "lucas@santdesign.com.br",
  "company": "Cannadrop",
  "html": "<p>Seu código de verificação é: ${pin}</p>",
  "text": "Este é o seu código de verificação: ${pin}",
  "status": "running",
  "lists": [
    1,
    "lucas@santdesign.com.br",
    {
      "name": "name",
      "email": "email"
    }
  ],
  "channel": "email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailNotifications',
      apiUrl: 'https://api.yournotify.com/campaigns/email',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'cannadrop',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? messagename(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message.name''',
      ));
  static String? messagemessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
