import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'dart:async';
import 'parcelas_widget.dart' show ParcelasWidget;
import 'package:flutter/material.dart';

class ParcelasModel extends FlutterFlowModel<ParcelasWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? apiRefresh;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  // Stores action output result for [Backend Call - API (Gerar Pix)] action in Button widget.
  ApiCallResponse? apiResult64h;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiResult709;
  // Stores action output result for [Backend Call - API (ConsultarPix)] action in Button widget.
  ApiCallResponse? apiResultczh;
  // Stores action output result for [Backend Call - API (Whatsapp)] action in Button widget.
  ApiCallResponse? apiMSG;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiFinal2;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiFinal;
  // Stores action output result for [Backend Call - API (Gerar Pix)] action in Button widget.
  ApiCallResponse? apiResult64h3;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiResult7093;
  // Stores action output result for [Backend Call - API (ConsultarPix)] action in Button widget.
  ApiCallResponse? apiResultczh3;
  // Stores action output result for [Backend Call - API (Whatsapp)] action in Button widget.
  ApiCallResponse? apiMSG2;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiFinal4;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiFinal5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    apiRefresh?.cancel();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
