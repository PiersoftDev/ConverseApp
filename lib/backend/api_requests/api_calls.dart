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
      apiUrl:
          'http://ec2-65-2-39-255.ap-south-1.compute.amazonaws.com:8080/converse/v1/auth/signup',
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
      apiUrl:
          'http://ec2-65-2-39-255.ap-south-1.compute.amazonaws.com:8080/converse/v1/auth/confirmSignup',
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
      apiUrl:
          'http://ec2-65-2-39-255.ap-south-1.compute.amazonaws.com:8080/converse/v1/auth/signin',
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

class OnboardProjectCall {
  static Future<ApiCallResponse> call({
    String? projectTitle = '',
    String? regionalOffice = '',
    String? addressLine1 = '',
    String? addressLine2 = '',
    String? state = '',
    String? contactNumber = '',
  }) {
    final body = '''
{
  "projectTitle": "${projectTitle}",
  "regionalOffice": "${regionalOffice}",
  "addressLine1": "${addressLine1}",
  "addressLine2": "${addressLine2}",
  "state": "${state}",
  "contactNumber": "${contactNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'onboardProject',
      apiUrl:
          'http://ec2-65-2-39-255.ap-south-1.compute.amazonaws.com:8080/converse/v1/project/onboard',
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

class UploadHeaderImageCall {
  static Future<ApiCallResponse> call({
    String? file = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadHeaderImage',
      apiUrl:
          'http://ec2-65-2-39-255.ap-south-1.compute.amazonaws.com:8080/converse/v1/project/headerImage',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'file': file,
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FetchAllProjectsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'fetchAllProjects',
      apiUrl:
          'http://ec2-65-2-39-255.ap-south-1.compute.amazonaws.com:8080/converse/v1/project/',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateGatepassCall {
  static Future<ApiCallResponse> call({
    String? driverName = '',
    String? driverPhoneNumber = '',
    String? material = '',
    String? gatepassVehicleImg = '',
    String? purchaseOrderImg = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createGatepass',
      apiUrl: 'https://562163236fb0.in.ngrok.io/converse/v1/gatepass/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'driverName': driverName,
        'driverPhoneNumber': driverPhoneNumber,
        'material': material,
        'gatepassVehicleImg': gatepassVehicleImg,
        'purchaseOrderImg': purchaseOrderImg,
      },
      bodyType: BodyType.MULTIPART,
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
