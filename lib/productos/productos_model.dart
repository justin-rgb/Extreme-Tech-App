import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/producto_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BusCate widget.
  TextEditingController? busCateController;
  String? Function(BuildContext, String?)? busCateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    busCateController?.dispose();
  }

  /// Additional helper methods are added here.

}
