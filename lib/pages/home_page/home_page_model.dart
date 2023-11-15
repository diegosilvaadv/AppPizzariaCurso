import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:badges/badges.dart' as badges;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<ProdutosRow> teste = [];
  void addToTeste(ProdutosRow item) => teste.add(item);
  void removeFromTeste(ProdutosRow item) => teste.remove(item);
  void removeAtIndexFromTeste(int index) => teste.removeAt(index);
  void insertAtIndexInTeste(int index, ProdutosRow item) =>
      teste.insert(index, item);
  void updateTesteAtIndex(int index, Function(ProdutosRow) updateFn) =>
      teste[index] = updateFn(teste[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController6;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
    expandableController5.dispose();
    expandableController6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
