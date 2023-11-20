// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecosStruct extends BaseStruct {
  EnderecosStruct({
    String? cep,
    String? enderecos,
  })  : _cep = cep,
        _enderecos = enderecos;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  // "enderecos" field.
  String? _enderecos;
  String get enderecos => _enderecos ?? '';
  set enderecos(String? val) => _enderecos = val;
  bool hasEnderecos() => _enderecos != null;

  static EnderecosStruct fromMap(Map<String, dynamic> data) => EnderecosStruct(
        cep: data['cep'] as String?,
        enderecos: data['enderecos'] as String?,
      );

  static EnderecosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EnderecosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'cep': _cep,
        'enderecos': _enderecos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'enderecos': serializeParam(
          _enderecos,
          ParamType.String,
        ),
      }.withoutNulls;

  static EnderecosStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnderecosStruct(
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        enderecos: deserializeParam(
          data['enderecos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EnderecosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnderecosStruct &&
        cep == other.cep &&
        enderecos == other.enderecos;
  }

  @override
  int get hashCode => const ListEquality().hash([cep, enderecos]);
}

EnderecosStruct createEnderecosStruct({
  String? cep,
  String? enderecos,
}) =>
    EnderecosStruct(
      cep: cep,
      enderecos: enderecos,
    );
