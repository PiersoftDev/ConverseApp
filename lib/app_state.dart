import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _profilePicUrl = '';
  String get profilePicUrl => _profilePicUrl;
  set profilePicUrl(String _value) {
    _profilePicUrl = _value;
  }

  String _persona = '';
  String get persona => _persona;
  set persona(String _value) {
    _persona = _value;
  }

  String _countryCode = '';
  String get countryCode => _countryCode;
  set countryCode(String _value) {
    _countryCode = _value;
  }

  String _whatsappNumber = '';
  String get whatsappNumber => _whatsappNumber;
  set whatsappNumber(String _value) {
    _whatsappNumber = _value;
  }

  String _apiError = '';
  String get apiError => _apiError;
  set apiError(String _value) {
    _apiError = _value;
  }

  String _selectedProjectId = '';
  String get selectedProjectId => _selectedProjectId;
  set selectedProjectId(String _value) {
    _selectedProjectId = _value;
  }

  String _imgUrl1 = '';
  String get imgUrl1 => _imgUrl1;
  set imgUrl1(String _value) {
    _imgUrl1 = _value;
  }

  String _imgUrl2 = '';
  String get imgUrl2 => _imgUrl2;
  set imgUrl2(String _value) {
    _imgUrl2 = _value;
  }

  String _imgUrl3 = '';
  String get imgUrl3 => _imgUrl3;
  set imgUrl3(String _value) {
    _imgUrl3 = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
