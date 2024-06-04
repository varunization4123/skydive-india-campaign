import '/components/web_components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_windy_model.dart';
export 'main_windy_model.dart';

class MainWindyWidget extends StatefulWidget {
  const MainWindyWidget({super.key});

  @override
  State<MainWindyWidget> createState() => _MainWindyWidgetState();
}

class _MainWindyWidgetState extends State<MainWindyWidget> {
  late MainWindyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWindyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.sideNavModel,
            updateCallback: () => setState(() {}),
            child: const SideNavWidget(
              selectedNav: 4,
            ),
          ),
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  maxWidth: 1070.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Text(
                                    'Windy',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmallFamily,
                                          fontSize: 42.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmallFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      FlutterFlowWebView(
                        content:
                            'https://www.windy.com/?54.345,41.446,8,m:fbCahi8',
                        bypass: false,
                        height: MediaQuery.sizeOf(context).height * 0.88,
                        verticalScroll: false,
                        horizontalScroll: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
