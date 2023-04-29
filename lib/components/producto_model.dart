import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CantidadCarrito widget.
  TextEditingController? cantidadCarritoController;
  String? Function(BuildContext, String?)? cantidadCarritoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    cantidadCarritoController?.dispose();
  }

  /// Additional helper methods are added here.

}
