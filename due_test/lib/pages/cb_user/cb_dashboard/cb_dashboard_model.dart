import '/components/account_profile/account_profile_widget.dart';
import '/components/custom_menu/custom_menu_widget.dart';
import '/components/list_report_done/list_report_done_widget.dart';
import '/components/list_report_error/list_report_error_widget.dart';
import '/components/list_report_progress/list_report_progress_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cb_dashboard_widget.dart' show CbDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CbDashboardModel extends FlutterFlowModel<CbDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customMenu component.
  late CustomMenuModel customMenuModel;
  // Model for listReport_Progress component.
  late ListReportProgressModel listReportProgressModel;
  // Model for listReport_Error component.
  late ListReportErrorModel listReportErrorModel;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel1;
  // Model for listReport_Done component.
  late ListReportDoneModel listReportDoneModel2;
  // Model for accountProfile component.
  late AccountProfileModel accountProfileModel;

  @override
  void initState(BuildContext context) {
    customMenuModel = createModel(context, () => CustomMenuModel());
    listReportProgressModel =
        createModel(context, () => ListReportProgressModel());
    listReportErrorModel = createModel(context, () => ListReportErrorModel());
    listReportDoneModel1 = createModel(context, () => ListReportDoneModel());
    listReportDoneModel2 = createModel(context, () => ListReportDoneModel());
    accountProfileModel = createModel(context, () => AccountProfileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customMenuModel.dispose();
    listReportProgressModel.dispose();
    listReportErrorModel.dispose();
    listReportDoneModel1.dispose();
    listReportDoneModel2.dispose();
    accountProfileModel.dispose();
  }
}
