import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_menu_model.dart';
export 'custom_menu_model.dart';

class CustomMenuWidget extends StatefulWidget {
  const CustomMenuWidget({super.key});

  @override
  State<CustomMenuWidget> createState() => _CustomMenuWidgetState();
}

class _CustomMenuWidgetState extends State<CustomMenuWidget> {
  late CustomMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed('cbRequestForm');
              },
              text: 'Tạo phiếu',
              icon: Icon(
                Icons.add_circle_sharp,
                size: 18.0,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xD032C769),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: 24.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              icon: Icon(
                Icons.filter_alt,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 18.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
      ],
    );
  }
}
