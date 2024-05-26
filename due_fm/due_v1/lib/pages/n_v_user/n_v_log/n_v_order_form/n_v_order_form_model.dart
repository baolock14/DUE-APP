import '/components/confirm_dialog/confirm_dialog_widget.dart';
import '/components/show_mission_full/show_mission_full_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'n_v_order_form_widget.dart' show NVOrderFormWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NVOrderFormModel extends FlutterFlowModel<NVOrderFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for showMissionFull component.
  late ShowMissionFullModel showMissionFullModel;

  @override
  void initState(BuildContext context) {
    showMissionFullModel = createModel(context, () => ShowMissionFullModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    showMissionFullModel.dispose();
  }
}
