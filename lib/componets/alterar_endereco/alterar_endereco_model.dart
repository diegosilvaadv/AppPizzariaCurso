import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'alterar_endereco_widget.dart' show AlterarEnderecoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlterarEnderecoModel extends FlutterFlowModel<AlterarEnderecoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  String? Function(BuildContext, String?)? cepControllerValidator;
  // Stores action output result for [Backend Call - API (BuscarCep)] action in Button widget.
  ApiCallResponse? resultadoAPI;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    cepFocusNode?.dispose();
    cepController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
