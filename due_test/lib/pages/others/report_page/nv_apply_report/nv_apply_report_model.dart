import '/components/account_profile/account_profile_widget.dart';
import '/components/list_report_done/list_report_done_widget.dart';
import '/components/list_report_error/list_report_error_widget.dart';
import '/components/list_report_progress/list_report_progress_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'nv_apply_report_widget.dart' show NvApplyReportWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NvApplyReportModel extends FlutterFlowModel<NvApplyReportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for listReport_Progress component.
  late ListReportProgressModel listReportProgressModel;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel1;
  // Model for listReport_Error component.
  late ListReportErrorModel listReportErrorModel;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel2;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel3;
  // Model for accountProfile component.
  late AccountProfileModel accountProfileModel;

  @override
  void initState(BuildContext context) {
    listReportProgressModel =
        createModel(context, () => ListReportProgressModel());
    listReportDoneModel1 = createModel(context, () => ListReportDoneModel());
    listReportErrorModel = createModel(context, () => ListReportErrorModel());
    listReportDoneModel2 = createModel(context, () => ListReportDoneModel());
    listReportDoneModel3 = createModel(context, () => ListReportDoneModel());
    accountProfileModel = createModel(context, () => AccountProfileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listReportProgressModel.dispose();
    listReportDoneModel1.dispose();
    listReportErrorModel.dispose();
    listReportDoneModel2.dispose();
    listReportDoneModel3.dispose();
    accountProfileModel.dispose();
  }
}
