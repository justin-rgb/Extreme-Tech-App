import '/auth/firebase_auth/auth_util.dart';
import '/components/enviado_mensaje_correo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtOlvidarCorreo widget.
  TextEditingController? txtOlvidarCorreoController;
  String? Function(BuildContext, String?)? txtOlvidarCorreoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtOlvidarCorreoController?.dispose();
  }

  /// Additional helper methods are added here.

}
