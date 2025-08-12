import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Gestor Group Code

class APIGestorGroup {
  static String getBaseUrl({
    String? idempresa = '',
  }) =>
      'https://app.meuclickonline.com.br';
  static Map<String, String> headers = {
    'Authorization':
        'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
  };
  static NomeEmpresaCall nomeEmpresaCall = NomeEmpresaCall();
  static DadosEmpresaCall dadosEmpresaCall = DadosEmpresaCall();
  static VerificaClienteCall verificaClienteCall = VerificaClienteCall();
  static ItensPedidosClienteCall itensPedidosClienteCall =
      ItensPedidosClienteCall();
  static RetornaParcelasAbertoCall retornaParcelasAbertoCall =
      RetornaParcelasAbertoCall();
  static RetornaParcelasPagosCall retornaParcelasPagosCall =
      RetornaParcelasPagosCall();
  static RetornaVendasCall retornaVendasCall = RetornaVendasCall();
  static AtualizarDetalheParcelaCall atualizarDetalheParcelaCall =
      AtualizarDetalheParcelaCall();
  static WhatsappCall whatsappCall = WhatsappCall();
}

class NomeEmpresaCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
  "nome_fantasia": "${escapeStringForJson(nome)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Nome Empresa',
      apiUrl:
          '${baseUrl}/rest.php?class=CadastrosRestService&method=consultaNomeEmpresa',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nome_fantasia''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
}

class DadosEmpresaCall {
  Future<ApiCallResponse> call({
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(idempresa)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dados Empresa',
      apiUrl:
          '${baseUrl}/rest.php?class=CadastrosRestService&method=dados_empresa',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? fantasia(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nome_fantasia''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.url''',
      ));
  String? corEmpresa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.cor_empresa''',
      ));
  String? urlFoto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.url_foto''',
      ));
  String? nomeForm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nome_formatado''',
      ));
  int? usaPIX(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.usa_pix_padrao''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class VerificaClienteCall {
  Future<ApiCallResponse> call({
    String? cnpj = '',
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
  "empresa_id": "${escapeStringForJson(idempresa)}"
,
  "cnpj": "${escapeStringForJson(cnpj)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verifica Cliente',
      apiUrl:
          '${baseUrl}/rest.php?class=CadastrosRestService&method=retornaClientes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].nome_fantasia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? grupo(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].grupo_cliente''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? totalParcelas(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? idCliente(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? celular(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].celular''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? totalPago(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_pago''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? totalAberto(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_aberto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ItensPedidosClienteCall {
  Future<ApiCallResponse> call({
    int? idMovimentacao,
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
 "id_empresa": "${escapeStringForJson(idempresa)}",
 "id_movimentacao" : ${idMovimentacao}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Itens Pedidos Cliente',
      apiUrl:
          '${baseUrl}/rest.php?class=NotaRestService&method=retornaDetalhesNota',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dataPag(dynamic response) => getJsonField(
        response,
        r'''$.data.data.pagamentos''',
        true,
      ) as List?;
  List? dataItens(dynamic response) => getJsonField(
        response,
        r'''$.data.data.detalhes''',
        true,
      ) as List?;
}

class RetornaParcelasAbertoCall {
  Future<ApiCallResponse> call({
    int? idCliente,
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
 "id_empresa": "${escapeStringForJson(idempresa)}",
 "idCliente" : ${idCliente}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RetornaParcelas Aberto',
      apiUrl:
          '${baseUrl}/rest.php?class=NotaRestService&method=retornaParcelasAbertos',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data.data''',
        true,
      ) as List?;
}

class RetornaParcelasPagosCall {
  Future<ApiCallResponse> call({
    int? idCliente,
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
 "id_empresa": "${escapeStringForJson(idempresa)}",
 "idCliente" : ${idCliente}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RetornaParcelas Pagos',
      apiUrl:
          '${baseUrl}/rest.php?class=NotaRestService&method=retornaParcelasPagos',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data.data''',
        true,
      ) as List?;
}

class RetornaVendasCall {
  Future<ApiCallResponse> call({
    int? idCliente,
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
 "id_empresa": "${escapeStringForJson(idempresa)}",
 "idCliente" : ${idCliente}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RetornaVendas',
      apiUrl: '${baseUrl}/rest.php?class=NotaRestService&method=retornaVendas',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data.data''',
        true,
      ) as List?;
}

class AtualizarDetalheParcelaCall {
  Future<ApiCallResponse> call({
    int? idContaDetalhe,
    int? idPix,
    String? copiaColar = '',
    int? idSituacao,
    String? enviadomsg = '',
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
  "idContaDetalhe": ${idContaDetalhe},
  "id_pix": ${idPix},
  "copia_colar": "${escapeStringForJson(copiaColar)}",
  "idSituacao": ${idSituacao},
  "enviadomsg": "${escapeStringForJson(enviadomsg)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizar Detalhe Parcela',
      apiUrl:
          '${baseUrl}/rest.php?class=CadastrosRestService&method=atualizaContaDetalhe',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data.data''',
        true,
      ) as List?;
}

class WhatsappCall {
  Future<ApiCallResponse> call({
    String? mensagem = '',
    String? numero = '',
    String? idempresa = '',
  }) async {
    final baseUrl = APIGestorGroup.getBaseUrl(
      idempresa: idempresa,
    );

    final ffApiRequestBody = '''
{
  "mensagem": "${escapeStringForJson(mensagem)}",
  "numero": "${escapeStringForJson(numero)}",
  "empresa_id": "${escapeStringForJson(idempresa)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Whatsapp',
      apiUrl:
          '${baseUrl}/rest.php?class=EmpresaRestService&method=enviaMensagemTextoZap',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_1927b11f4d4186c2f92d04a25956a41ed5c93909b350560e31b8b5719b43',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Gestor Group Code

/// Start API PIX Group Code

class ApiPixGroup {
  static String getBaseUrl() =>
      'https://testeonline.madbuilder.com.br/desenvolvimento04/paglinker/';
  static Map<String, String> headers = {
    'Authorization':
        'Basic_034bd030c93615992c2db7e7425c9de499e8292e976cc6d93efa7cc410c4',
  };
  static GerarPixCall gerarPixCall = GerarPixCall();
  static ConsultarPixCall consultarPixCall = ConsultarPixCall();
}

class GerarPixCall {
  Future<ApiCallResponse> call({
    double? valor,
    int? identificadorMovimento,
    int? idEmpresa,
  }) async {
    final baseUrl = ApiPixGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_empresa": ${idEmpresa},
  "valor": ${valor},
  "descricao": "Gerado pelo Consulta Parcelas",
  "identificador_movimento": ${identificadorMovimento},
  "ambiente": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gerar Pix',
      apiUrl: '${baseUrl}pix.php',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_034bd030c93615992c2db7e7425c9de499e8292e976cc6d93efa7cc410c4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? idInvoicePix(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id_invoice_pix''',
      ));
  String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.brcode''',
      ));
  String? brcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrcode''',
      ));
}

class ConsultarPixCall {
  Future<ApiCallResponse> call({
    String? idInvoicePix = '',
    int? idEmpresa,
  }) async {
    final baseUrl = ApiPixGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id_empresa": ${idEmpresa},
  "id_invoice_pix": "${escapeStringForJson(idInvoicePix)}",
  "ambiente": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConsultarPix',
      apiUrl: '${baseUrl}consulta_pix.php',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic_034bd030c93615992c2db7e7425c9de499e8292e976cc6d93efa7cc410c4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? qrcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.brcode''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.dados''',
      );
  String? vencimento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.vencimento''',
      ));
  String? txId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.tx_id''',
      ));
  List<int>? qrcodeList(dynamic response) => (getJsonField(
        response,
        r'''$.dados.qrcode.data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dados.status''',
      ));
}

/// End API PIX Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
