// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    int? idCliente,
    String? cnpj,
    String? nome,
    String? numero,
    int? idEmpresa,
    String? grupo,
    String? imgEmpresa,
    int? empresaPIX,
  })  : _idCliente = idCliente,
        _cnpj = cnpj,
        _nome = nome,
        _numero = numero,
        _idEmpresa = idEmpresa,
        _grupo = grupo,
        _imgEmpresa = imgEmpresa,
        _empresaPIX = empresaPIX;

  // "idCliente" field.
  int? _idCliente;
  int get idCliente => _idCliente ?? 0;
  set idCliente(int? val) => _idCliente = val;

  void incrementIdCliente(int amount) => idCliente = idCliente + amount;

  bool hasIdCliente() => _idCliente != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "idEmpresa" field.
  int? _idEmpresa;
  int get idEmpresa => _idEmpresa ?? 0;
  set idEmpresa(int? val) => _idEmpresa = val;

  void incrementIdEmpresa(int amount) => idEmpresa = idEmpresa + amount;

  bool hasIdEmpresa() => _idEmpresa != null;

  // "grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  set grupo(String? val) => _grupo = val;

  bool hasGrupo() => _grupo != null;

  // "imgEmpresa" field.
  String? _imgEmpresa;
  String get imgEmpresa => _imgEmpresa ?? '';
  set imgEmpresa(String? val) => _imgEmpresa = val;

  bool hasImgEmpresa() => _imgEmpresa != null;

  // "empresaPIX" field.
  int? _empresaPIX;
  int get empresaPIX => _empresaPIX ?? 0;
  set empresaPIX(int? val) => _empresaPIX = val;

  void incrementEmpresaPIX(int amount) => empresaPIX = empresaPIX + amount;

  bool hasEmpresaPIX() => _empresaPIX != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        idCliente: castToType<int>(data['idCliente']),
        cnpj: data['cnpj'] as String?,
        nome: data['nome'] as String?,
        numero: data['numero'] as String?,
        idEmpresa: castToType<int>(data['idEmpresa']),
        grupo: data['grupo'] as String?,
        imgEmpresa: data['imgEmpresa'] as String?,
        empresaPIX: castToType<int>(data['empresaPIX']),
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idCliente': _idCliente,
        'cnpj': _cnpj,
        'nome': _nome,
        'numero': _numero,
        'idEmpresa': _idEmpresa,
        'grupo': _grupo,
        'imgEmpresa': _imgEmpresa,
        'empresaPIX': _empresaPIX,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idCliente': serializeParam(
          _idCliente,
          ParamType.int,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'idEmpresa': serializeParam(
          _idEmpresa,
          ParamType.int,
        ),
        'grupo': serializeParam(
          _grupo,
          ParamType.String,
        ),
        'imgEmpresa': serializeParam(
          _imgEmpresa,
          ParamType.String,
        ),
        'empresaPIX': serializeParam(
          _empresaPIX,
          ParamType.int,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        idCliente: deserializeParam(
          data['idCliente'],
          ParamType.int,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        idEmpresa: deserializeParam(
          data['idEmpresa'],
          ParamType.int,
          false,
        ),
        grupo: deserializeParam(
          data['grupo'],
          ParamType.String,
          false,
        ),
        imgEmpresa: deserializeParam(
          data['imgEmpresa'],
          ParamType.String,
          false,
        ),
        empresaPIX: deserializeParam(
          data['empresaPIX'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioStruct &&
        idCliente == other.idCliente &&
        cnpj == other.cnpj &&
        nome == other.nome &&
        numero == other.numero &&
        idEmpresa == other.idEmpresa &&
        grupo == other.grupo &&
        imgEmpresa == other.imgEmpresa &&
        empresaPIX == other.empresaPIX;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idCliente,
        cnpj,
        nome,
        numero,
        idEmpresa,
        grupo,
        imgEmpresa,
        empresaPIX
      ]);
}

UsuarioStruct createUsuarioStruct({
  int? idCliente,
  String? cnpj,
  String? nome,
  String? numero,
  int? idEmpresa,
  String? grupo,
  String? imgEmpresa,
  int? empresaPIX,
}) =>
    UsuarioStruct(
      idCliente: idCliente,
      cnpj: cnpj,
      nome: nome,
      numero: numero,
      idEmpresa: idEmpresa,
      grupo: grupo,
      imgEmpresa: imgEmpresa,
      empresaPIX: empresaPIX,
    );
