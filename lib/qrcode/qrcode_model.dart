import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'qrcode_widget.dart' show QrcodeWidget;
import 'package:flutter/material.dart';

class QrcodeModel extends FlutterFlowModel<QrcodeWidget> {
  ///  Local state fields for this page.

  int contador = 0;

  String consultapag = 'N';

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (ConsultarPix)] action in qrcode widget.
  ApiCallResponse? apiResultgz1;
  // Stores action output result for [Backend Call - API (Whatsapp)] action in qrcode widget.
  ApiCallResponse? apiMSG;
  // Stores action output result for [Backend Call - API (ConsultarPix)] action in Button widget.
  ApiCallResponse? apiResultczh;
  // Stores action output result for [Backend Call - API (Whatsapp)] action in Button widget.
  ApiCallResponse? apiMSG2;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiFinal3;
  // Stores action output result for [Backend Call - API (Atualizar Detalhe Parcela)] action in Button widget.
  ApiCallResponse? apiFinal4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
