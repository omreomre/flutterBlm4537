import '/backend/backend.dart';
import '/components/cardd_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_copy_copy_model.dart';
export 'main_copy_copy_model.dart';

class MainCopyCopyWidget extends StatefulWidget {
  const MainCopyCopyWidget({Key? key}) : super(key: key);

  @override
  _MainCopyCopyWidgetState createState() => _MainCopyCopyWidgetState();
}

class _MainCopyCopyWidgetState extends State<MainCopyCopyWidget> {
  late MainCopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCopyCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primary,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 0.95,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.95,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 193.4,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).richBlackFOGRA39,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.83, -0.80),
                        child: Text(
                          'Orders',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 35.0,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.14, 0.48),
                        child: Container(
                          width: 358.8,
                          height: 618.8,
                          decoration: BoxDecoration(
                            color: Color(0xFFC6C6C6),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: StreamBuilder<List<OrdersRecord>>(
                            stream: queryOrdersRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: CarddWidget(
                                    name: 'sadfsf',
                                    price: 44.0,
                                    payment: 'cash',
                                    type: 'mobile',
                                  ),
                                );
                              }
                              List<OrdersRecord> listViewOrdersRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewOrdersRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewOrdersRecord =
                                      listViewOrdersRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 15.0, 10.0),
                                    child: CarddWidget(
                                      key: Key(
                                          'Keyzkg_${listViewIndex}_of_${listViewOrdersRecordList.length}'),
                                      name: listViewOrdersRecord.name,
                                      price: listViewOrdersRecord.salePrice,
                                      payment: listViewOrdersRecord.payment,
                                      type: listViewOrdersRecord.type,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.05,
            decoration: BoxDecoration(
              color: Color(0xFFB2B2B2),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: FaIcon(
                    FontAwesomeIcons.borderNone,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                Spacer(),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.home,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('main');
                  },
                ),
                Spacer(),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.settings,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('mainCopy');
                  },
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
