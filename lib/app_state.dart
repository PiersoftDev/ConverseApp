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
