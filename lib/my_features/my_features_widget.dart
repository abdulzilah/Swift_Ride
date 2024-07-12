import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_features_model.dart';
export 'my_features_model.dart';

class MyFeaturesWidget extends StatefulWidget {
  const MyFeaturesWidget({Key? key}) : super(key: key);

  @override
  _MyFeaturesWidgetState createState() => _MyFeaturesWidgetState();
}

class _MyFeaturesWidgetState extends State<MyFeaturesWidget> {
  late MyFeaturesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyFeaturesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  bool availableSedan = false;
  bool availableVan = false;
  bool availableLuxury = false;

  bool generalSmoking = false;
  bool generalPets = false;
  bool generalWifi = false;
  bool generalCard = false;

  bool optionsCooling = false;
  bool optionsCameras = false;
  bool optionsGPS = false;
  bool optionsTint = false;
  bool optionsAUX = false;
  bool optionsHeating = false;
  bool optionsHSeats = false;

  bool saveChanges = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            // Container(
            //   width: double.infinity,
            //   height: MediaQuery.sizeOf(context).height * 1.0,
            //   decoration: BoxDecoration(
            //     color: FlutterFlowTheme.of(context).secondaryBackground,
            //     image: DecorationImage(
            //       fit: BoxFit.cover,
            //       image: Image.asset(
            //         'assets/images/magicpattern-mesh-gradient-1690095261867.png',
            //       ).image,
            //     ),
            //   ),
            // ),
            Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 145.0, 15.0, 15.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '47o61cef' /* Availabe Car Types */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Wrap(
                                      spacing: 15.0,
                                      runSpacing: 15.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                availableSedan =
                                                    !availableSedan;
                                              });
                                            },
                                            child: Container(
                                              width: 150.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 28.0,
                                                      height: 28.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      5.0),
                                                          child:
                                                              AnimatedOpacity(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                            opacity:
                                                                availableSedan
                                                                    ? 1
                                                                    : 0.0,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/check.png',
                                                                width: 15.0,
                                                                height: 15.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nfmukccg' /* Sedan */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                availableVan = !availableVan;
                                              });
                                            },
                                            child: Container(
                                              width: 150.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 10.0,
                                                      shape:
                                                          const CircleBorder(),
                                                      child: Container(
                                                        width: 28.0,
                                                        height: 28.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: AnimatedOpacity(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          opacity: availableVan
                                                              ? 1
                                                              : 0.0,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        5.0,
                                                                        5.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/check.png',
                                                                width: 15.0,
                                                                height: 15.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '67sd6m4c' /* Van */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                availableLuxury =
                                                    !availableLuxury;
                                              });
                                            },
                                            child: Container(
                                              width: 150.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 10.0,
                                                      shape:
                                                          const CircleBorder(),
                                                      child: Container(
                                                        width: 28.0,
                                                        height: 28.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      5.0,
                                                                      5.0,
                                                                      5.0),
                                                          child:
                                                              AnimatedOpacity(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                            opacity:
                                                                availableLuxury
                                                                    ? 1
                                                                    : 0.0,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/check.png',
                                                                width: 15.0,
                                                                height: 15.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ku768uid' /* Luxury */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 15.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'bwtmgbj2' /* General */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Wrap(
                                      spacing: 12.0,
                                      runSpacing: 20.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                generalSmoking =
                                                    !generalSmoking;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: generalSmoking
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'hm9cyp1d' /* Smoking */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: !generalSmoking
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                generalPets = !generalPets;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: generalPets
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fz2fow6x' /* Pets */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: generalPets
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                generalWifi = !generalWifi;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: generalWifi
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'pdiuq5p6' /* WiFi */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: generalWifi
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                generalCard = !generalCard;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 160.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: generalCard
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3llwqam2' /* Pay with card */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: generalCard
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 15.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'z6xd4mjb' /* Car Options */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 22.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Wrap(
                                      spacing: 12.0,
                                      runSpacing: 20.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsCooling =
                                                    !optionsCooling;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsCooling
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5h3qape8' /* Cooling */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsCooling
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsCameras =
                                                    !optionsCameras;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 110.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsCameras
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wvr8debc' /* Cameras */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsCameras
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsGPS = !optionsGPS;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 85.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsGPS
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ot1bf7gs' /* GPS */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsGPS
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsTint = !optionsTint;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 150.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsTint
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'r3e0hvpr' /* TInted Glass */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsTint
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsAUX = !optionsAUX;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsAUX
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4pzeo1ub' /* AUX */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsAUX
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsHeating =
                                                    !optionsHeating;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsHeating
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ovvxh0ii' /* Heating */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsHeating
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Material(
                                          color: Colors.transparent,
                                          elevation: 10.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: ScaleTap(
                                            onPressed: () {
                                              setState(() {
                                                optionsHSeats = !optionsHSeats;
                                              });
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 450),
                                              width: 160.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: optionsHSeats
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1dv8ix74' /* Heated Seats */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: optionsHSeats
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 70.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 10.0,
                        shape: const CircleBorder(),
                        child: ScaleTap(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chevron_left_outlined,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 22.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 2.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '5eprx78h' /* My Features */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 30.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: saveChanges
                        ? BorderRadius.circular(100.0)
                        : BorderRadius.circular(15.0),
                  ),
                  child: ScaleTap(
                    onPressed: () {
                      setState(() {
                        saveChanges = !saveChanges;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      width:
                          saveChanges ? 200 : MediaQuery.of(context).size.width,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        borderRadius: saveChanges
                            ? BorderRadius.circular(100.0)
                            : BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          saveChanges
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Saving",
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                        child: SizedBox(
                                      width: 20.0,
                                      height: 20.0,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.0,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).tertiary,
                                        ),
                                      ),
                                    ))
                                  ],
                                )
                              : Text(
                                  FFLocalizations.of(context).getText(
                                    's0v1s5im' /* Save Changes */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
