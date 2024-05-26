import '/components/account_profile/account_profile_widget.dart';
import '/components/list_report_apply/list_report_apply_widget.dart';
import '/components/list_report_done/list_report_done_widget.dart';
import '/components/list_report_error/list_report_error_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'nv_dashboard_widget.dart' show NvDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NvDashboardModel extends FlutterFlowModel<NvDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for listReport_Apply component.
  late ListReportApplyModel listReportApplyModel;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel1;
  // Model for listReport_Error component.
  late ListReportErrorModel listReportErrorModel;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel2;
  // Model for accountProfile component.
  late AccountProfileModel accountProfileModel;

  @override
  void initState(BuildContext context) {
    listReportApplyModel = createModel(context, () => ListReportApplyModel());
    listReportDoneModel1 = createModel(context, () => ListReportDoneModel());
    listReportErrorModel = createModel(context, () => ListReportErrorModel());
    listReportDoneModel2 = createModel(context, () => ListReportDoneModel());
    accountProfileModel = createModel(context, () => AccountProfileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listReportApplyModel.dispose();
    listReportDoneModel1.dispose();
    listReportErrorModel.dispose();
    listReportDoneModel2.dispose();
    accountProfileModel.dispose();
  }
}
