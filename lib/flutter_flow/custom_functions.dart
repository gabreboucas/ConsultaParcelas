import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

dynamic stringParaJSON(String? string) {
  // transformar json para string
  // transformar string em json
  try {
    // Tenta transformar a string em um JSON
    return jsonDecode(string ?? '');
  } catch (e) {
    // Em caso de erro, retorna null
    return null;
  }
}

String? jsonParaString(dynamic json) {
  // transformar json em string
  try {
    // Tenta transformar o JSON em uma string
    return jsonEncode(json);
  } catch (e) {
    // Em caso de erro, retorna null
    return null;
  }
}

double? stringParaDouble(String preco) {
  try {
    // Tenta converter a string para double
    return double.parse(preco ?? '');
  } catch (e) {
    // Em caso de erro, retorna null
    return null;
  }
}

int? stringParaInteiro(String valor) {
  return int.parse(valor);
}

String? transformaData(String? data) {
  // transforma string de data banco para data normal, Exemplo: 2024-08-13 00:00:00 - 13/08/2024
  if (data == null || data.isEmpty) {
    return null; // Return null if the input is null or empty
  }

  try {
    // Parse the input string to a DateTime object
    DateTime dateTime = DateTime.parse(data);

    // Format the DateTime object to the desired format "DD/MM/YYYY"
    String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);

    return formattedDate; // Return the formatted date string
  } catch (e) {
    // Handle any parsing errors
    return null; // Return null if parsing fails
  }
}
