// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedOrderDetailsWidget extends StatefulWidget {
  const AnimatedOrderDetailsWidget({
    super.key,
    this.width,
    this.height,
    this.orderValue = 0,
    required this.validDate,
    required this.orderNumber,
  });

  final double? width;
  final double? height;
  final double orderValue;
  final DateTime validDate;
  final String orderNumber;

  @override
  State<AnimatedOrderDetailsWidget> createState() =>
      _AnimatedOrderDetailsWidgetState();
}

class _AnimatedOrderDetailsWidgetState
    extends State<AnimatedOrderDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    final currencyFormatter =
        NumberFormat.currency(locale: 'en_US', symbol: '\$');
    final formattedOrderValue = currencyFormatter.format(widget.orderValue);

    final dateFormatter = DateFormat('MMM dd, yyyy');
    final formattedValidDate = dateFormatter.format(widget.validDate);

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: FlutterFlowTheme.of(context).primaryBackground,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Order Value:',
              style: FlutterFlowTheme.of(context).labelMedium,
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 200.ms)
                .slide(begin: const Offset(0, 0.5), end: Offset.zero),
            Text(
              formattedOrderValue,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily,
                    ),
                  ),
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 300.ms)
                .slide(begin: const Offset(0, 0.5), end: Offset.zero),
            const SizedBox(height: 12),
            Text(
              'Valid Until:',
              style: FlutterFlowTheme.of(context).labelMedium,
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 400.ms)
                .slide(begin: const Offset(0, 0.5), end: Offset.zero),
            Text(
              formattedValidDate,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleMediumFamily,
                    ),
                  ),
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 500.ms)
                .slide(begin: const Offset(0, 0.5), end: Offset.zero),
            const SizedBox(height: 12),
            Text(
              'Order Number:',
              style: FlutterFlowTheme.of(context).labelMedium,
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 600.ms)
                .slide(begin: const Offset(0, 0.5), end: Offset.zero),
            Text(
              widget.orderNumber,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: FlutterFlowTheme.of(context).tertiary,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily,
                    ),
                  ),
            )
                .animate()
                .fadeIn(duration: 600.ms, delay: 700.ms)
                .slide(begin: const Offset(0, 0.5), end: Offset.zero),
          ],
        ),
      ),
    );
  }
}
