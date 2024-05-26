import '/components/show_mission_short/show_mission_short_widget.dart';
import '/components/show_work_progress/show_work_progress_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'progress_detail_widget.dart' show ProgressDetailWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProgressDetailModel extends FlutterFlowModel<ProgressDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for showMissionShort component.
  late ShowMissionShortModel showMissionShortModel;
  // Model for showWorkProgress component.
  late ShowWorkProgressModel showWorkProgressModel;

  @override
  void initState(BuildContext context) {
    showMissionShortModel = createModel(context, () => ShowMissionShortModel());
    showWorkProgressModel = createModel(context, () => ShowWorkProgressModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    showMissionShortModel.dispose();
    showWorkProgressModel.dispose();
  }
}
