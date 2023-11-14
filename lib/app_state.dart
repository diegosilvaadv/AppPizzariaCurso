import 'package:flutter/material.dart';
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

  List<bool> _teste = [];
  List<bool> get teste => _teste;
  set teste(List<bool> _value) {
    _teste = _value;
  }

  void addToTeste(bool _value) {
    _teste.add(_value);
  }

  void removeFromTeste(bool _value) {
    _teste.remove(_value);
  }

  void removeAtIndexFromTeste(int _index) {
    _teste.removeAt(_index);
  }

  void updateTesteAtIndex(
    int _index,
    bool Function(bool) updateFn,
  ) {
    _teste[_index] = updateFn(_teste[_index]);
  }

  void insertAtIndexInTeste(int _index, bool _value) {
    _teste.insert(_index, _value);
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
