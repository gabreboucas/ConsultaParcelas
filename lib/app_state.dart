import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pagaConta = prefs
              .getStringList('ff_pagaConta')
              ?.map((x) {
                try {
                  return ParcelaPagandoStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pagaConta;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_criaUsuario')) {
        try {
          final serializedData = prefs.getString('ff_criaUsuario') ?? '{}';
          _criaUsuario =
              UsuarioStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ParcelaPagandoStruct> _pagaConta = [];
  List<ParcelaPagandoStruct> get pagaConta => _pagaConta;
  set pagaConta(List<ParcelaPagandoStruct> value) {
    _pagaConta = value;
    prefs.setStringList(
        'ff_pagaConta', value.map((x) => x.serialize()).toList());
  }

  void addToPagaConta(ParcelaPagandoStruct value) {
    pagaConta.add(value);
    prefs.setStringList(
        'ff_pagaConta', _pagaConta.map((x) => x.serialize()).toList());
  }

  void removeFromPagaConta(ParcelaPagandoStruct value) {
    pagaConta.remove(value);
    prefs.setStringList(
        'ff_pagaConta', _pagaConta.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPagaConta(int index) {
    pagaConta.removeAt(index);
    prefs.setStringList(
        'ff_pagaConta', _pagaConta.map((x) => x.serialize()).toList());
  }

  void updatePagaContaAtIndex(
    int index,
    ParcelaPagandoStruct Function(ParcelaPagandoStruct) updateFn,
  ) {
    pagaConta[index] = updateFn(_pagaConta[index]);
    prefs.setStringList(
        'ff_pagaConta', _pagaConta.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPagaConta(int index, ParcelaPagandoStruct value) {
    pagaConta.insert(index, value);
    prefs.setStringList(
        'ff_pagaConta', _pagaConta.map((x) => x.serialize()).toList());
  }

  UsuarioStruct _criaUsuario = UsuarioStruct();
  UsuarioStruct get criaUsuario => _criaUsuario;
  set criaUsuario(UsuarioStruct value) {
    _criaUsuario = value;
    prefs.setString('ff_criaUsuario', value.serialize());
  }

  void updateCriaUsuarioStruct(Function(UsuarioStruct) updateFn) {
    updateFn(_criaUsuario);
    prefs.setString('ff_criaUsuario', _criaUsuario.serialize());
  }
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
