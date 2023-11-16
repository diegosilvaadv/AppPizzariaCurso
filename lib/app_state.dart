import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _MenuCondicao = 'Monte sua Pizza';
  String get MenuCondicao => _MenuCondicao;
  set MenuCondicao(String _value) {
    _MenuCondicao = _value;
  }

  BordasRefStruct _bordasRef = BordasRefStruct.fromSerializableMap(
      jsonDecode('{\"nome_borda\":\"borda\",\"preco_borda\":\"0\"}'));
  BordasRefStruct get bordasRef => _bordasRef;
  set bordasRef(BordasRefStruct _value) {
    _bordasRef = _value;
  }

  void updateBordasRefStruct(Function(BordasRefStruct) updateFn) {
    updateFn(_bordasRef);
  }

  int _quanty = 1;
  int get quanty => _quanty;
  set quanty(int _value) {
    _quanty = _value;
  }

  SaboresRefStruct _Sabores = SaboresRefStruct.fromSerializableMap(jsonDecode(
      '{\"NomeSabor1\":\"nome\",\"NomeSabor2\":\"nome\",\"NomeSabor3\":\"nome\",\"NomeSabor4\":\"nome\",\"PrecoSabor1\":\"0\",\"PrecoSabor2\":\"0\",\"PrecoSabor3\":\"0\",\"PrecoSabor4\":\"0\"}'));
  SaboresRefStruct get Sabores => _Sabores;
  set Sabores(SaboresRefStruct _value) {
    _Sabores = _value;
  }

  void updateSaboresStruct(Function(SaboresRefStruct) updateFn) {
    updateFn(_Sabores);
  }

  int _CondicaoGeral = 0;
  int get CondicaoGeral => _CondicaoGeral;
  set CondicaoGeral(int _value) {
    _CondicaoGeral = _value;
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
