import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreReg widget.
  TextEditingController? txtNombreRegController;
  String? Function(BuildContext, String?)? txtNombreRegControllerValidator;
  // State field(s) for txtNumeroTelReg widget.
  TextEditingController? txtNumeroTelRegController;
  String? Function(BuildContext, String?)? txtNumeroTelRegControllerValidator;
  // State field(s) for txtCorreoReg widget.
  TextEditingController? txtCorreoRegController;
  String? Function(BuildContext, String?)? txtCorreoRegControllerValidator;
  // State field(s) for txtPasswordReg widget.
  TextEditingController? txtPasswordRegController;
  late bool txtPasswordRegVisibility;
  String? Function(BuildContext, String?)? txtPasswordRegControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtPasswordRegVisibility = false;
  }

  void dispose() {
    txtNombreRegController?.dispose();
    txtNumeroTelRegController?.dispose();
    txtCorreoRegController?.dispose();
    txtPasswordRegController?.dispose();
  }

  /// Additional helper methods are added here.

}
