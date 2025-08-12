// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class UsuarioHeaderWidget extends StatefulWidget {
  const UsuarioHeaderWidget({
    super.key,
    this.width,
    this.height,
    required this.nomeUsuario,
    required this.grupoUsuario,
    required this.onLogout,
  });

  final double? width;
  final double? height;
  final String nomeUsuario;
  final String grupoUsuario;
  final Future Function() onLogout;

  @override
  _UsuarioHeaderWidgetState createState() => _UsuarioHeaderWidgetState();
}

class _UsuarioHeaderWidgetState extends State<UsuarioHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = responsiveVisibility(
      context: context,
      phone: false,
      tablet: false,
    );

    final isMobile = responsiveVisibility(
      context: context,
      tabletLandscape: false,
      desktop: false,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header com ícone e nome
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 40, 16, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(
                FontAwesomeIcons.userAlt,
                color: FlutterFlowTheme.of(context).primary,
                size: isDesktop ? 36 : 28,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Saudação + Nome
                    Row(
                      children: [
                        Text(
                          'Olá, ',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Lexend',
                                fontSize: isDesktop ? 30 : 18,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Flexible(
                          child: Text(
                            widget.nomeUsuario,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Lexend',
                                  fontSize: isDesktop ? 30 : 18,
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    // Mensagem
                    Text(
                      'Abaixo estão os detalhes de suas compras e parcelas',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend',
                            fontSize: isDesktop ? 18 : 14,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Grupo com imagem e botão de logout (se mobile)
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Imagem + grupo
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/consulta-prazos-2rv27q/assets/c4gzlcu0q3ui/Silver-metal-blue_35754.png',
                      width: isDesktop ? 42 : 32,
                      height: isDesktop ? 42 : 32,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.grupoUsuario,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend',
                          fontSize: isDesktop ? 22 : 16,
                        ),
                  ),
                ],
              ),

              // Ícone de logout (somente em mobile)
              if (isMobile)
                InkWell(
                  onTap: widget.onLogout,
                  child: Icon(
                    Icons.exit_to_app,
                    color: FlutterFlowTheme.of(context).error,
                    size: 28,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
