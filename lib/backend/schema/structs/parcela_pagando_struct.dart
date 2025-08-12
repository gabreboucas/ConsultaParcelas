// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParcelaPagandoStruct extends BaseStruct {
  ParcelaPagandoStruct({
    int? id,
    int? idContasParcelas,
    String? dataVencimento,
    String? dataPagamento,
    int? numeroParcela,
    int? valor,
    int? taxaJuros,
    int? taxaMulta,
    int? taxaDesconto,
    int? valorJuros,
    int? idSituacaoParcela,
    int? valorPago,
    int? idEmpresaPago,
    String? boletoImpresso,
    String? stbaixaRetorno,
    int? nossoNumero,
    String? statusEstorno,
    int? idUserPagamento,
    String? statusPrevisao,
    String? parcelaEntrada,
    String? statusAltVen,
    int? idTipoPagamento,
    String? renegociada,
    String? cancelado,
    String? dataCancelamento,
    String? obsCancelamento,
    String? baixaparcial,
    String? stbaixaparc,
    double? taxaAdm,
    int? idTerminalPdv,
    double? valorAdm,
    int? idFuncionarioCanc,
    String? tituloImportadoBaixa,
    String? statusEnvioBoleto,
    String? baixadoPeloPdv,
    String? ignorarBonus,
    String? pagIdentificado,
    String? notaServivoGerado,
  })  : _id = id,
        _idContasParcelas = idContasParcelas,
        _dataVencimento = dataVencimento,
        _dataPagamento = dataPagamento,
        _numeroParcela = numeroParcela,
        _valor = valor,
        _taxaJuros = taxaJuros,
        _taxaMulta = taxaMulta,
        _taxaDesconto = taxaDesconto,
        _valorJuros = valorJuros,
        _idSituacaoParcela = idSituacaoParcela,
        _valorPago = valorPago,
        _idEmpresaPago = idEmpresaPago,
        _boletoImpresso = boletoImpresso,
        _stbaixaRetorno = stbaixaRetorno,
        _nossoNumero = nossoNumero,
        _statusEstorno = statusEstorno,
        _idUserPagamento = idUserPagamento,
        _statusPrevisao = statusPrevisao,
        _parcelaEntrada = parcelaEntrada,
        _statusAltVen = statusAltVen,
        _idTipoPagamento = idTipoPagamento,
        _renegociada = renegociada,
        _cancelado = cancelado,
        _dataCancelamento = dataCancelamento,
        _obsCancelamento = obsCancelamento,
        _baixaparcial = baixaparcial,
        _stbaixaparc = stbaixaparc,
        _taxaAdm = taxaAdm,
        _idTerminalPdv = idTerminalPdv,
        _valorAdm = valorAdm,
        _idFuncionarioCanc = idFuncionarioCanc,
        _tituloImportadoBaixa = tituloImportadoBaixa,
        _statusEnvioBoleto = statusEnvioBoleto,
        _baixadoPeloPdv = baixadoPeloPdv,
        _ignorarBonus = ignorarBonus,
        _pagIdentificado = pagIdentificado,
        _notaServivoGerado = notaServivoGerado;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "ID_CONTAS_PARCELAS" field.
  int? _idContasParcelas;
  int get idContasParcelas => _idContasParcelas ?? 0;
  set idContasParcelas(int? val) => _idContasParcelas = val;

  void incrementIdContasParcelas(int amount) =>
      idContasParcelas = idContasParcelas + amount;

  bool hasIdContasParcelas() => _idContasParcelas != null;

  // "DATA_VENCIMENTO" field.
  String? _dataVencimento;
  String get dataVencimento => _dataVencimento ?? '';
  set dataVencimento(String? val) => _dataVencimento = val;

  bool hasDataVencimento() => _dataVencimento != null;

  // "DATA_PAGAMENTO" field.
  String? _dataPagamento;
  String get dataPagamento => _dataPagamento ?? '';
  set dataPagamento(String? val) => _dataPagamento = val;

  bool hasDataPagamento() => _dataPagamento != null;

  // "NUMERO_PARCELA" field.
  int? _numeroParcela;
  int get numeroParcela => _numeroParcela ?? 0;
  set numeroParcela(int? val) => _numeroParcela = val;

  void incrementNumeroParcela(int amount) =>
      numeroParcela = numeroParcela + amount;

  bool hasNumeroParcela() => _numeroParcela != null;

  // "VALOR" field.
  int? _valor;
  int get valor => _valor ?? 0;
  set valor(int? val) => _valor = val;

  void incrementValor(int amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "TAXA_JUROS" field.
  int? _taxaJuros;
  int get taxaJuros => _taxaJuros ?? 0;
  set taxaJuros(int? val) => _taxaJuros = val;

  void incrementTaxaJuros(int amount) => taxaJuros = taxaJuros + amount;

  bool hasTaxaJuros() => _taxaJuros != null;

  // "TAXA_MULTA" field.
  int? _taxaMulta;
  int get taxaMulta => _taxaMulta ?? 0;
  set taxaMulta(int? val) => _taxaMulta = val;

  void incrementTaxaMulta(int amount) => taxaMulta = taxaMulta + amount;

  bool hasTaxaMulta() => _taxaMulta != null;

  // "TAXA_DESCONTO" field.
  int? _taxaDesconto;
  int get taxaDesconto => _taxaDesconto ?? 0;
  set taxaDesconto(int? val) => _taxaDesconto = val;

  void incrementTaxaDesconto(int amount) =>
      taxaDesconto = taxaDesconto + amount;

  bool hasTaxaDesconto() => _taxaDesconto != null;

  // "VALOR_JUROS" field.
  int? _valorJuros;
  int get valorJuros => _valorJuros ?? 0;
  set valorJuros(int? val) => _valorJuros = val;

  void incrementValorJuros(int amount) => valorJuros = valorJuros + amount;

  bool hasValorJuros() => _valorJuros != null;

  // "ID_SITUACAO_PARCELA" field.
  int? _idSituacaoParcela;
  int get idSituacaoParcela => _idSituacaoParcela ?? 0;
  set idSituacaoParcela(int? val) => _idSituacaoParcela = val;

  void incrementIdSituacaoParcela(int amount) =>
      idSituacaoParcela = idSituacaoParcela + amount;

  bool hasIdSituacaoParcela() => _idSituacaoParcela != null;

  // "VALOR_PAGO" field.
  int? _valorPago;
  int get valorPago => _valorPago ?? 0;
  set valorPago(int? val) => _valorPago = val;

  void incrementValorPago(int amount) => valorPago = valorPago + amount;

  bool hasValorPago() => _valorPago != null;

  // "ID_EMPRESA_PAGO" field.
  int? _idEmpresaPago;
  int get idEmpresaPago => _idEmpresaPago ?? 0;
  set idEmpresaPago(int? val) => _idEmpresaPago = val;

  void incrementIdEmpresaPago(int amount) =>
      idEmpresaPago = idEmpresaPago + amount;

  bool hasIdEmpresaPago() => _idEmpresaPago != null;

  // "BOLETO_IMPRESSO" field.
  String? _boletoImpresso;
  String get boletoImpresso => _boletoImpresso ?? '';
  set boletoImpresso(String? val) => _boletoImpresso = val;

  bool hasBoletoImpresso() => _boletoImpresso != null;

  // "STBAIXA_RETORNO" field.
  String? _stbaixaRetorno;
  String get stbaixaRetorno => _stbaixaRetorno ?? '';
  set stbaixaRetorno(String? val) => _stbaixaRetorno = val;

  bool hasStbaixaRetorno() => _stbaixaRetorno != null;

  // "NOSSO_NUMERO" field.
  int? _nossoNumero;
  int get nossoNumero => _nossoNumero ?? 0;
  set nossoNumero(int? val) => _nossoNumero = val;

  void incrementNossoNumero(int amount) => nossoNumero = nossoNumero + amount;

  bool hasNossoNumero() => _nossoNumero != null;

  // "STATUS_ESTORNO" field.
  String? _statusEstorno;
  String get statusEstorno => _statusEstorno ?? '';
  set statusEstorno(String? val) => _statusEstorno = val;

  bool hasStatusEstorno() => _statusEstorno != null;

  // "ID_USER_PAGAMENTO" field.
  int? _idUserPagamento;
  int get idUserPagamento => _idUserPagamento ?? 0;
  set idUserPagamento(int? val) => _idUserPagamento = val;

  void incrementIdUserPagamento(int amount) =>
      idUserPagamento = idUserPagamento + amount;

  bool hasIdUserPagamento() => _idUserPagamento != null;

  // "STATUS_PREVISAO" field.
  String? _statusPrevisao;
  String get statusPrevisao => _statusPrevisao ?? '';
  set statusPrevisao(String? val) => _statusPrevisao = val;

  bool hasStatusPrevisao() => _statusPrevisao != null;

  // "PARCELA_ENTRADA" field.
  String? _parcelaEntrada;
  String get parcelaEntrada => _parcelaEntrada ?? '';
  set parcelaEntrada(String? val) => _parcelaEntrada = val;

  bool hasParcelaEntrada() => _parcelaEntrada != null;

  // "STATUS_ALT_VEN" field.
  String? _statusAltVen;
  String get statusAltVen => _statusAltVen ?? '';
  set statusAltVen(String? val) => _statusAltVen = val;

  bool hasStatusAltVen() => _statusAltVen != null;

  // "ID_TIPO_PAGAMENTO" field.
  int? _idTipoPagamento;
  int get idTipoPagamento => _idTipoPagamento ?? 0;
  set idTipoPagamento(int? val) => _idTipoPagamento = val;

  void incrementIdTipoPagamento(int amount) =>
      idTipoPagamento = idTipoPagamento + amount;

  bool hasIdTipoPagamento() => _idTipoPagamento != null;

  // "RENEGOCIADA" field.
  String? _renegociada;
  String get renegociada => _renegociada ?? '';
  set renegociada(String? val) => _renegociada = val;

  bool hasRenegociada() => _renegociada != null;

  // "CANCELADO" field.
  String? _cancelado;
  String get cancelado => _cancelado ?? '';
  set cancelado(String? val) => _cancelado = val;

  bool hasCancelado() => _cancelado != null;

  // "DATA_CANCELAMENTO" field.
  String? _dataCancelamento;
  String get dataCancelamento => _dataCancelamento ?? '';
  set dataCancelamento(String? val) => _dataCancelamento = val;

  bool hasDataCancelamento() => _dataCancelamento != null;

  // "OBS_CANCELAMENTO" field.
  String? _obsCancelamento;
  String get obsCancelamento => _obsCancelamento ?? '';
  set obsCancelamento(String? val) => _obsCancelamento = val;

  bool hasObsCancelamento() => _obsCancelamento != null;

  // "BAIXAPARCIAL" field.
  String? _baixaparcial;
  String get baixaparcial => _baixaparcial ?? '';
  set baixaparcial(String? val) => _baixaparcial = val;

  bool hasBaixaparcial() => _baixaparcial != null;

  // "STBAIXAPARC" field.
  String? _stbaixaparc;
  String get stbaixaparc => _stbaixaparc ?? '';
  set stbaixaparc(String? val) => _stbaixaparc = val;

  bool hasStbaixaparc() => _stbaixaparc != null;

  // "TAXA_ADM" field.
  double? _taxaAdm;
  double get taxaAdm => _taxaAdm ?? 0.0;
  set taxaAdm(double? val) => _taxaAdm = val;

  void incrementTaxaAdm(double amount) => taxaAdm = taxaAdm + amount;

  bool hasTaxaAdm() => _taxaAdm != null;

  // "ID_TERMINAL_PDV" field.
  int? _idTerminalPdv;
  int get idTerminalPdv => _idTerminalPdv ?? 0;
  set idTerminalPdv(int? val) => _idTerminalPdv = val;

  void incrementIdTerminalPdv(int amount) =>
      idTerminalPdv = idTerminalPdv + amount;

  bool hasIdTerminalPdv() => _idTerminalPdv != null;

  // "VALOR_ADM" field.
  double? _valorAdm;
  double get valorAdm => _valorAdm ?? 0.0;
  set valorAdm(double? val) => _valorAdm = val;

  void incrementValorAdm(double amount) => valorAdm = valorAdm + amount;

  bool hasValorAdm() => _valorAdm != null;

  // "ID_FUNCIONARIO_CANC" field.
  int? _idFuncionarioCanc;
  int get idFuncionarioCanc => _idFuncionarioCanc ?? 0;
  set idFuncionarioCanc(int? val) => _idFuncionarioCanc = val;

  void incrementIdFuncionarioCanc(int amount) =>
      idFuncionarioCanc = idFuncionarioCanc + amount;

  bool hasIdFuncionarioCanc() => _idFuncionarioCanc != null;

  // "TITULO_IMPORTADO_BAIXA" field.
  String? _tituloImportadoBaixa;
  String get tituloImportadoBaixa => _tituloImportadoBaixa ?? '';
  set tituloImportadoBaixa(String? val) => _tituloImportadoBaixa = val;

  bool hasTituloImportadoBaixa() => _tituloImportadoBaixa != null;

  // "STATUS_ENVIO_BOLETO" field.
  String? _statusEnvioBoleto;
  String get statusEnvioBoleto => _statusEnvioBoleto ?? '';
  set statusEnvioBoleto(String? val) => _statusEnvioBoleto = val;

  bool hasStatusEnvioBoleto() => _statusEnvioBoleto != null;

  // "BAIXADO_PELO_PDV" field.
  String? _baixadoPeloPdv;
  String get baixadoPeloPdv => _baixadoPeloPdv ?? '';
  set baixadoPeloPdv(String? val) => _baixadoPeloPdv = val;

  bool hasBaixadoPeloPdv() => _baixadoPeloPdv != null;

  // "IGNORAR_BONUS" field.
  String? _ignorarBonus;
  String get ignorarBonus => _ignorarBonus ?? '';
  set ignorarBonus(String? val) => _ignorarBonus = val;

  bool hasIgnorarBonus() => _ignorarBonus != null;

  // "PAG_IDENTIFICADO" field.
  String? _pagIdentificado;
  String get pagIdentificado => _pagIdentificado ?? '';
  set pagIdentificado(String? val) => _pagIdentificado = val;

  bool hasPagIdentificado() => _pagIdentificado != null;

  // "NOTA_SERVIVO_GERADO" field.
  String? _notaServivoGerado;
  String get notaServivoGerado => _notaServivoGerado ?? '';
  set notaServivoGerado(String? val) => _notaServivoGerado = val;

  bool hasNotaServivoGerado() => _notaServivoGerado != null;

  static ParcelaPagandoStruct fromMap(Map<String, dynamic> data) =>
      ParcelaPagandoStruct(
        id: castToType<int>(data['id']),
        idContasParcelas: castToType<int>(data['ID_CONTAS_PARCELAS']),
        dataVencimento: data['DATA_VENCIMENTO'] as String?,
        dataPagamento: data['DATA_PAGAMENTO'] as String?,
        numeroParcela: castToType<int>(data['NUMERO_PARCELA']),
        valor: castToType<int>(data['VALOR']),
        taxaJuros: castToType<int>(data['TAXA_JUROS']),
        taxaMulta: castToType<int>(data['TAXA_MULTA']),
        taxaDesconto: castToType<int>(data['TAXA_DESCONTO']),
        valorJuros: castToType<int>(data['VALOR_JUROS']),
        idSituacaoParcela: castToType<int>(data['ID_SITUACAO_PARCELA']),
        valorPago: castToType<int>(data['VALOR_PAGO']),
        idEmpresaPago: castToType<int>(data['ID_EMPRESA_PAGO']),
        boletoImpresso: data['BOLETO_IMPRESSO'] as String?,
        stbaixaRetorno: data['STBAIXA_RETORNO'] as String?,
        nossoNumero: castToType<int>(data['NOSSO_NUMERO']),
        statusEstorno: data['STATUS_ESTORNO'] as String?,
        idUserPagamento: castToType<int>(data['ID_USER_PAGAMENTO']),
        statusPrevisao: data['STATUS_PREVISAO'] as String?,
        parcelaEntrada: data['PARCELA_ENTRADA'] as String?,
        statusAltVen: data['STATUS_ALT_VEN'] as String?,
        idTipoPagamento: castToType<int>(data['ID_TIPO_PAGAMENTO']),
        renegociada: data['RENEGOCIADA'] as String?,
        cancelado: data['CANCELADO'] as String?,
        dataCancelamento: data['DATA_CANCELAMENTO'] as String?,
        obsCancelamento: data['OBS_CANCELAMENTO'] as String?,
        baixaparcial: data['BAIXAPARCIAL'] as String?,
        stbaixaparc: data['STBAIXAPARC'] as String?,
        taxaAdm: castToType<double>(data['TAXA_ADM']),
        idTerminalPdv: castToType<int>(data['ID_TERMINAL_PDV']),
        valorAdm: castToType<double>(data['VALOR_ADM']),
        idFuncionarioCanc: castToType<int>(data['ID_FUNCIONARIO_CANC']),
        tituloImportadoBaixa: data['TITULO_IMPORTADO_BAIXA'] as String?,
        statusEnvioBoleto: data['STATUS_ENVIO_BOLETO'] as String?,
        baixadoPeloPdv: data['BAIXADO_PELO_PDV'] as String?,
        ignorarBonus: data['IGNORAR_BONUS'] as String?,
        pagIdentificado: data['PAG_IDENTIFICADO'] as String?,
        notaServivoGerado: data['NOTA_SERVIVO_GERADO'] as String?,
      );

  static ParcelaPagandoStruct? maybeFromMap(dynamic data) => data is Map
      ? ParcelaPagandoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'ID_CONTAS_PARCELAS': _idContasParcelas,
        'DATA_VENCIMENTO': _dataVencimento,
        'DATA_PAGAMENTO': _dataPagamento,
        'NUMERO_PARCELA': _numeroParcela,
        'VALOR': _valor,
        'TAXA_JUROS': _taxaJuros,
        'TAXA_MULTA': _taxaMulta,
        'TAXA_DESCONTO': _taxaDesconto,
        'VALOR_JUROS': _valorJuros,
        'ID_SITUACAO_PARCELA': _idSituacaoParcela,
        'VALOR_PAGO': _valorPago,
        'ID_EMPRESA_PAGO': _idEmpresaPago,
        'BOLETO_IMPRESSO': _boletoImpresso,
        'STBAIXA_RETORNO': _stbaixaRetorno,
        'NOSSO_NUMERO': _nossoNumero,
        'STATUS_ESTORNO': _statusEstorno,
        'ID_USER_PAGAMENTO': _idUserPagamento,
        'STATUS_PREVISAO': _statusPrevisao,
        'PARCELA_ENTRADA': _parcelaEntrada,
        'STATUS_ALT_VEN': _statusAltVen,
        'ID_TIPO_PAGAMENTO': _idTipoPagamento,
        'RENEGOCIADA': _renegociada,
        'CANCELADO': _cancelado,
        'DATA_CANCELAMENTO': _dataCancelamento,
        'OBS_CANCELAMENTO': _obsCancelamento,
        'BAIXAPARCIAL': _baixaparcial,
        'STBAIXAPARC': _stbaixaparc,
        'TAXA_ADM': _taxaAdm,
        'ID_TERMINAL_PDV': _idTerminalPdv,
        'VALOR_ADM': _valorAdm,
        'ID_FUNCIONARIO_CANC': _idFuncionarioCanc,
        'TITULO_IMPORTADO_BAIXA': _tituloImportadoBaixa,
        'STATUS_ENVIO_BOLETO': _statusEnvioBoleto,
        'BAIXADO_PELO_PDV': _baixadoPeloPdv,
        'IGNORAR_BONUS': _ignorarBonus,
        'PAG_IDENTIFICADO': _pagIdentificado,
        'NOTA_SERVIVO_GERADO': _notaServivoGerado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'ID_CONTAS_PARCELAS': serializeParam(
          _idContasParcelas,
          ParamType.int,
        ),
        'DATA_VENCIMENTO': serializeParam(
          _dataVencimento,
          ParamType.String,
        ),
        'DATA_PAGAMENTO': serializeParam(
          _dataPagamento,
          ParamType.String,
        ),
        'NUMERO_PARCELA': serializeParam(
          _numeroParcela,
          ParamType.int,
        ),
        'VALOR': serializeParam(
          _valor,
          ParamType.int,
        ),
        'TAXA_JUROS': serializeParam(
          _taxaJuros,
          ParamType.int,
        ),
        'TAXA_MULTA': serializeParam(
          _taxaMulta,
          ParamType.int,
        ),
        'TAXA_DESCONTO': serializeParam(
          _taxaDesconto,
          ParamType.int,
        ),
        'VALOR_JUROS': serializeParam(
          _valorJuros,
          ParamType.int,
        ),
        'ID_SITUACAO_PARCELA': serializeParam(
          _idSituacaoParcela,
          ParamType.int,
        ),
        'VALOR_PAGO': serializeParam(
          _valorPago,
          ParamType.int,
        ),
        'ID_EMPRESA_PAGO': serializeParam(
          _idEmpresaPago,
          ParamType.int,
        ),
        'BOLETO_IMPRESSO': serializeParam(
          _boletoImpresso,
          ParamType.String,
        ),
        'STBAIXA_RETORNO': serializeParam(
          _stbaixaRetorno,
          ParamType.String,
        ),
        'NOSSO_NUMERO': serializeParam(
          _nossoNumero,
          ParamType.int,
        ),
        'STATUS_ESTORNO': serializeParam(
          _statusEstorno,
          ParamType.String,
        ),
        'ID_USER_PAGAMENTO': serializeParam(
          _idUserPagamento,
          ParamType.int,
        ),
        'STATUS_PREVISAO': serializeParam(
          _statusPrevisao,
          ParamType.String,
        ),
        'PARCELA_ENTRADA': serializeParam(
          _parcelaEntrada,
          ParamType.String,
        ),
        'STATUS_ALT_VEN': serializeParam(
          _statusAltVen,
          ParamType.String,
        ),
        'ID_TIPO_PAGAMENTO': serializeParam(
          _idTipoPagamento,
          ParamType.int,
        ),
        'RENEGOCIADA': serializeParam(
          _renegociada,
          ParamType.String,
        ),
        'CANCELADO': serializeParam(
          _cancelado,
          ParamType.String,
        ),
        'DATA_CANCELAMENTO': serializeParam(
          _dataCancelamento,
          ParamType.String,
        ),
        'OBS_CANCELAMENTO': serializeParam(
          _obsCancelamento,
          ParamType.String,
        ),
        'BAIXAPARCIAL': serializeParam(
          _baixaparcial,
          ParamType.String,
        ),
        'STBAIXAPARC': serializeParam(
          _stbaixaparc,
          ParamType.String,
        ),
        'TAXA_ADM': serializeParam(
          _taxaAdm,
          ParamType.double,
        ),
        'ID_TERMINAL_PDV': serializeParam(
          _idTerminalPdv,
          ParamType.int,
        ),
        'VALOR_ADM': serializeParam(
          _valorAdm,
          ParamType.double,
        ),
        'ID_FUNCIONARIO_CANC': serializeParam(
          _idFuncionarioCanc,
          ParamType.int,
        ),
        'TITULO_IMPORTADO_BAIXA': serializeParam(
          _tituloImportadoBaixa,
          ParamType.String,
        ),
        'STATUS_ENVIO_BOLETO': serializeParam(
          _statusEnvioBoleto,
          ParamType.String,
        ),
        'BAIXADO_PELO_PDV': serializeParam(
          _baixadoPeloPdv,
          ParamType.String,
        ),
        'IGNORAR_BONUS': serializeParam(
          _ignorarBonus,
          ParamType.String,
        ),
        'PAG_IDENTIFICADO': serializeParam(
          _pagIdentificado,
          ParamType.String,
        ),
        'NOTA_SERVIVO_GERADO': serializeParam(
          _notaServivoGerado,
          ParamType.String,
        ),
      }.withoutNulls;

  static ParcelaPagandoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParcelaPagandoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        idContasParcelas: deserializeParam(
          data['ID_CONTAS_PARCELAS'],
          ParamType.int,
          false,
        ),
        dataVencimento: deserializeParam(
          data['DATA_VENCIMENTO'],
          ParamType.String,
          false,
        ),
        dataPagamento: deserializeParam(
          data['DATA_PAGAMENTO'],
          ParamType.String,
          false,
        ),
        numeroParcela: deserializeParam(
          data['NUMERO_PARCELA'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['VALOR'],
          ParamType.int,
          false,
        ),
        taxaJuros: deserializeParam(
          data['TAXA_JUROS'],
          ParamType.int,
          false,
        ),
        taxaMulta: deserializeParam(
          data['TAXA_MULTA'],
          ParamType.int,
          false,
        ),
        taxaDesconto: deserializeParam(
          data['TAXA_DESCONTO'],
          ParamType.int,
          false,
        ),
        valorJuros: deserializeParam(
          data['VALOR_JUROS'],
          ParamType.int,
          false,
        ),
        idSituacaoParcela: deserializeParam(
          data['ID_SITUACAO_PARCELA'],
          ParamType.int,
          false,
        ),
        valorPago: deserializeParam(
          data['VALOR_PAGO'],
          ParamType.int,
          false,
        ),
        idEmpresaPago: deserializeParam(
          data['ID_EMPRESA_PAGO'],
          ParamType.int,
          false,
        ),
        boletoImpresso: deserializeParam(
          data['BOLETO_IMPRESSO'],
          ParamType.String,
          false,
        ),
        stbaixaRetorno: deserializeParam(
          data['STBAIXA_RETORNO'],
          ParamType.String,
          false,
        ),
        nossoNumero: deserializeParam(
          data['NOSSO_NUMERO'],
          ParamType.int,
          false,
        ),
        statusEstorno: deserializeParam(
          data['STATUS_ESTORNO'],
          ParamType.String,
          false,
        ),
        idUserPagamento: deserializeParam(
          data['ID_USER_PAGAMENTO'],
          ParamType.int,
          false,
        ),
        statusPrevisao: deserializeParam(
          data['STATUS_PREVISAO'],
          ParamType.String,
          false,
        ),
        parcelaEntrada: deserializeParam(
          data['PARCELA_ENTRADA'],
          ParamType.String,
          false,
        ),
        statusAltVen: deserializeParam(
          data['STATUS_ALT_VEN'],
          ParamType.String,
          false,
        ),
        idTipoPagamento: deserializeParam(
          data['ID_TIPO_PAGAMENTO'],
          ParamType.int,
          false,
        ),
        renegociada: deserializeParam(
          data['RENEGOCIADA'],
          ParamType.String,
          false,
        ),
        cancelado: deserializeParam(
          data['CANCELADO'],
          ParamType.String,
          false,
        ),
        dataCancelamento: deserializeParam(
          data['DATA_CANCELAMENTO'],
          ParamType.String,
          false,
        ),
        obsCancelamento: deserializeParam(
          data['OBS_CANCELAMENTO'],
          ParamType.String,
          false,
        ),
        baixaparcial: deserializeParam(
          data['BAIXAPARCIAL'],
          ParamType.String,
          false,
        ),
        stbaixaparc: deserializeParam(
          data['STBAIXAPARC'],
          ParamType.String,
          false,
        ),
        taxaAdm: deserializeParam(
          data['TAXA_ADM'],
          ParamType.double,
          false,
        ),
        idTerminalPdv: deserializeParam(
          data['ID_TERMINAL_PDV'],
          ParamType.int,
          false,
        ),
        valorAdm: deserializeParam(
          data['VALOR_ADM'],
          ParamType.double,
          false,
        ),
        idFuncionarioCanc: deserializeParam(
          data['ID_FUNCIONARIO_CANC'],
          ParamType.int,
          false,
        ),
        tituloImportadoBaixa: deserializeParam(
          data['TITULO_IMPORTADO_BAIXA'],
          ParamType.String,
          false,
        ),
        statusEnvioBoleto: deserializeParam(
          data['STATUS_ENVIO_BOLETO'],
          ParamType.String,
          false,
        ),
        baixadoPeloPdv: deserializeParam(
          data['BAIXADO_PELO_PDV'],
          ParamType.String,
          false,
        ),
        ignorarBonus: deserializeParam(
          data['IGNORAR_BONUS'],
          ParamType.String,
          false,
        ),
        pagIdentificado: deserializeParam(
          data['PAG_IDENTIFICADO'],
          ParamType.String,
          false,
        ),
        notaServivoGerado: deserializeParam(
          data['NOTA_SERVIVO_GERADO'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ParcelaPagandoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParcelaPagandoStruct &&
        id == other.id &&
        idContasParcelas == other.idContasParcelas &&
        dataVencimento == other.dataVencimento &&
        dataPagamento == other.dataPagamento &&
        numeroParcela == other.numeroParcela &&
        valor == other.valor &&
        taxaJuros == other.taxaJuros &&
        taxaMulta == other.taxaMulta &&
        taxaDesconto == other.taxaDesconto &&
        valorJuros == other.valorJuros &&
        idSituacaoParcela == other.idSituacaoParcela &&
        valorPago == other.valorPago &&
        idEmpresaPago == other.idEmpresaPago &&
        boletoImpresso == other.boletoImpresso &&
        stbaixaRetorno == other.stbaixaRetorno &&
        nossoNumero == other.nossoNumero &&
        statusEstorno == other.statusEstorno &&
        idUserPagamento == other.idUserPagamento &&
        statusPrevisao == other.statusPrevisao &&
        parcelaEntrada == other.parcelaEntrada &&
        statusAltVen == other.statusAltVen &&
        idTipoPagamento == other.idTipoPagamento &&
        renegociada == other.renegociada &&
        cancelado == other.cancelado &&
        dataCancelamento == other.dataCancelamento &&
        obsCancelamento == other.obsCancelamento &&
        baixaparcial == other.baixaparcial &&
        stbaixaparc == other.stbaixaparc &&
        taxaAdm == other.taxaAdm &&
        idTerminalPdv == other.idTerminalPdv &&
        valorAdm == other.valorAdm &&
        idFuncionarioCanc == other.idFuncionarioCanc &&
        tituloImportadoBaixa == other.tituloImportadoBaixa &&
        statusEnvioBoleto == other.statusEnvioBoleto &&
        baixadoPeloPdv == other.baixadoPeloPdv &&
        ignorarBonus == other.ignorarBonus &&
        pagIdentificado == other.pagIdentificado &&
        notaServivoGerado == other.notaServivoGerado;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        idContasParcelas,
        dataVencimento,
        dataPagamento,
        numeroParcela,
        valor,
        taxaJuros,
        taxaMulta,
        taxaDesconto,
        valorJuros,
        idSituacaoParcela,
        valorPago,
        idEmpresaPago,
        boletoImpresso,
        stbaixaRetorno,
        nossoNumero,
        statusEstorno,
        idUserPagamento,
        statusPrevisao,
        parcelaEntrada,
        statusAltVen,
        idTipoPagamento,
        renegociada,
        cancelado,
        dataCancelamento,
        obsCancelamento,
        baixaparcial,
        stbaixaparc,
        taxaAdm,
        idTerminalPdv,
        valorAdm,
        idFuncionarioCanc,
        tituloImportadoBaixa,
        statusEnvioBoleto,
        baixadoPeloPdv,
        ignorarBonus,
        pagIdentificado,
        notaServivoGerado
      ]);
}

ParcelaPagandoStruct createParcelaPagandoStruct({
  int? id,
  int? idContasParcelas,
  String? dataVencimento,
  String? dataPagamento,
  int? numeroParcela,
  int? valor,
  int? taxaJuros,
  int? taxaMulta,
  int? taxaDesconto,
  int? valorJuros,
  int? idSituacaoParcela,
  int? valorPago,
  int? idEmpresaPago,
  String? boletoImpresso,
  String? stbaixaRetorno,
  int? nossoNumero,
  String? statusEstorno,
  int? idUserPagamento,
  String? statusPrevisao,
  String? parcelaEntrada,
  String? statusAltVen,
  int? idTipoPagamento,
  String? renegociada,
  String? cancelado,
  String? dataCancelamento,
  String? obsCancelamento,
  String? baixaparcial,
  String? stbaixaparc,
  double? taxaAdm,
  int? idTerminalPdv,
  double? valorAdm,
  int? idFuncionarioCanc,
  String? tituloImportadoBaixa,
  String? statusEnvioBoleto,
  String? baixadoPeloPdv,
  String? ignorarBonus,
  String? pagIdentificado,
  String? notaServivoGerado,
}) =>
    ParcelaPagandoStruct(
      id: id,
      idContasParcelas: idContasParcelas,
      dataVencimento: dataVencimento,
      dataPagamento: dataPagamento,
      numeroParcela: numeroParcela,
      valor: valor,
      taxaJuros: taxaJuros,
      taxaMulta: taxaMulta,
      taxaDesconto: taxaDesconto,
      valorJuros: valorJuros,
      idSituacaoParcela: idSituacaoParcela,
      valorPago: valorPago,
      idEmpresaPago: idEmpresaPago,
      boletoImpresso: boletoImpresso,
      stbaixaRetorno: stbaixaRetorno,
      nossoNumero: nossoNumero,
      statusEstorno: statusEstorno,
      idUserPagamento: idUserPagamento,
      statusPrevisao: statusPrevisao,
      parcelaEntrada: parcelaEntrada,
      statusAltVen: statusAltVen,
      idTipoPagamento: idTipoPagamento,
      renegociada: renegociada,
      cancelado: cancelado,
      dataCancelamento: dataCancelamento,
      obsCancelamento: obsCancelamento,
      baixaparcial: baixaparcial,
      stbaixaparc: stbaixaparc,
      taxaAdm: taxaAdm,
      idTerminalPdv: idTerminalPdv,
      valorAdm: valorAdm,
      idFuncionarioCanc: idFuncionarioCanc,
      tituloImportadoBaixa: tituloImportadoBaixa,
      statusEnvioBoleto: statusEnvioBoleto,
      baixadoPeloPdv: baixadoPeloPdv,
      ignorarBonus: ignorarBonus,
      pagIdentificado: pagIdentificado,
      notaServivoGerado: notaServivoGerado,
    );
