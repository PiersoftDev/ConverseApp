import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateUserCall {
  static Future<ApiCallResponse> call({
    String? persona = '',
    String? countryCode = '',
    String? whatsappNumber = '',
    String? password = '',
  }) {
    final body = '''
{
  "persona": "${persona}",
  "countryCode": "${countryCode}",
  "whatsappNumber": "${whatsappNumber}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: 'https://6f9b47445fca.in.ngrok.io/converse/v1/auth/signup',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ConfirmUserCall {
  static Future<ApiCallResponse> call({
    String? confirmationCode = '',
    String? phoneNumber = '',
    String? countryCode = '',
  }) {
    final body = '''
{
  "confirmationCode": "${confirmationCode}",
  "phoneNumber": "${phoneNumber}",
  "countryCode": "${countryCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmUser',
      apiUrl: 'https://6f9b47445fca.in.ngrok.io/converse/v1/auth/confirmSignup',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SignInUserCall {
  static Future<ApiCallResponse> call({
    String? countryCode = '',
    String? phoneNumber = '',
    String? password = '',
  }) {
    final body = '''
{
  "countryCode": "${countryCode}",
  "phoneNumber": "${phoneNumber}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signInUser',
      apiUrl: 'https://8eaaf68f38ca.in.ngrok.io/converse/v1/auth/signin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
