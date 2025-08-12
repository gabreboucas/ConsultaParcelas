import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
    String? id,
  }) : this.id = id ?? 'NILA MODAS';

  final String id;

  static String routeName = 'HomePage';
  static String routePath = '/:id';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: APIGestorGroup.nomeEmpresaCall.call(
        nome: widget.id,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final homePageNomeEmpresaResponse = snapshot.data!;

        return Title(
            title: 'HomePage',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                body: SafeArea(
                  top: true,
                  child: FutureBuilder<ApiCallResponse>(
                    future: APIGestorGroup.dadosEmpresaCall.call(
                      idempresa: APIGestorGroup.nomeEmpresaCall
                          .id(
                            homePageNomeEmpresaResponse.jsonBody,
                          )
                          ?.toString(),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      final columnDadosEmpresaResponse = snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width: 150.0,
                                    height: 150.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://app.meuclickonline.com.br/${APIGestorGroup.dadosEmpresaCall.urlFoto(
                                        columnDadosEmpresaResponse.jsonBody,
                                      )}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      APIGestorGroup.dadosEmpresaCall.fantasia(
                                        columnDadosEmpresaResponse.jsonBody,
                                      ),
                                      'Empresa',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.rubik(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Text(
                                  'Acesse suas parcelas em aberto',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      hintText: 'Insira aqui CNPJ ou CPF',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.apiResultydj = await APIGestorGroup
                                        .verificaClienteCall
                                        .call(
                                      cnpj: _model.textController.text,
                                      idempresa: APIGestorGroup.nomeEmpresaCall
                                          .id(
                                            homePageNomeEmpresaResponse
                                                .jsonBody,
                                          )
                                          ?.toString(),
                                    );

                                    if ((_model.apiResultydj?.succeeded ??
                                        true)) {
                                      if (APIGestorGroup.dadosEmpresaCall
                                              .usaPIX(
                                            columnDadosEmpresaResponse.jsonBody,
                                          ) ==
                                          0) {
                                        FFAppState().criaUsuario =
                                            UsuarioStruct(
                                          idCliente:
                                              APIGestorGroup.verificaClienteCall
                                                  .idCliente(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          cnpj: _model.textController.text,
                                          nome:
                                              APIGestorGroup.verificaClienteCall
                                                  .nome(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          numero:
                                              APIGestorGroup.verificaClienteCall
                                                  .celular(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          idEmpresa:
                                              APIGestorGroup.nomeEmpresaCall.id(
                                            homePageNomeEmpresaResponse
                                                .jsonBody,
                                          ),
                                          grupo:
                                              APIGestorGroup.verificaClienteCall
                                                  .grupo(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          imgEmpresa: APIGestorGroup
                                              .dadosEmpresaCall
                                              .urlFoto(
                                            columnDadosEmpresaResponse.jsonBody,
                                          ),
                                          empresaPIX: 1,
                                        );
                                        safeSetState(() {});
                                      } else {
                                        FFAppState().criaUsuario =
                                            UsuarioStruct(
                                          idCliente:
                                              APIGestorGroup.verificaClienteCall
                                                  .idCliente(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          cnpj: _model.textController.text,
                                          nome:
                                              APIGestorGroup.verificaClienteCall
                                                  .nome(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          numero:
                                              APIGestorGroup.verificaClienteCall
                                                  .celular(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          idEmpresa:
                                              APIGestorGroup.nomeEmpresaCall.id(
                                            homePageNomeEmpresaResponse
                                                .jsonBody,
                                          ),
                                          grupo:
                                              APIGestorGroup.verificaClienteCall
                                                  .grupo(
                                                    (_model.apiResultydj
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  ?.firstOrNull,
                                          imgEmpresa: APIGestorGroup
                                              .dadosEmpresaCall
                                              .urlFoto(
                                            columnDadosEmpresaResponse.jsonBody,
                                          ),
                                          empresaPIX:
                                              APIGestorGroup.nomeEmpresaCall.id(
                                            homePageNomeEmpresaResponse
                                                .jsonBody,
                                          ),
                                        );
                                        safeSetState(() {});
                                      }

                                      context.pushNamed(
                                        EscolherPaginaWidget.routeName,
                                        pathParameters: {
                                          'id': serializeParam(
                                            widget.id,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title:
                                                Text('CLIENTE NÃO ENCONTRADO'),
                                            content: Text(
                                                'Não foi possível encontrar os dados que você forneceu, revise-o ou entre contato com a empresa'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }

                                    safeSetState(() {});
                                  },
                                  text: 'ENTRAR',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
