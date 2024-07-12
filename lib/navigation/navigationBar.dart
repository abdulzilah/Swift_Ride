import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swift_ride/flutter_flow/flutter_flow_theme.dart';
import 'package:swift_ride/history/history_widget.dart';
import 'package:swift_ride/index.dart';
import 'package:swift_ride/requests/requests_widget.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  int selectedPage = 0;
  bool isHome = true;
  bool isHistory = false;
  bool isProfile = false;
  final List<Widget> pages = [
    RequestsWidget(),
    HistoryWidget(),
    ProfileWidget()
  ];
  void navigate(int index) {
    selectedPage = index;
    setState(() {});
    ();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 30.0),
        child: Material(
          color: Colors.transparent,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Container(
            width: double.infinity,
            height: 60.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ScaleTap(
                    onPressed: () {
                      setState(() {
                        selectedPage = 0;

                        isHistory = false;
                        isHome = true;
                        isProfile = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                      height: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            isHome ? Icons.home : Icons.home_outlined,
                            color: isHome
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context).alternate,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ScaleTap(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Container(
                      width: 2.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0x7EE5BEEC),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ScaleTap(
                    onPressed: () {
                      setState(() {
                        selectedPage = 1;

                        isHistory = true;
                        isHome = false;
                        isProfile = false;
                      });
                    },
                    child: Container(
                      color: FlutterFlowTheme.of(context).secondary,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.history,
                            color: isHistory
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context).alternate,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Container(
                    width: 2.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0x7EE5BEEC),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
                Expanded(
                  child: ScaleTap(
                    onPressed: () {
                      setState(() {
                        selectedPage = 2;

                        isHistory = false;
                        isHome = false;
                        isProfile = true;
                      });
                    },
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            isProfile ? Icons.person : Icons.person_outline,
                            color: isProfile
                                ? FlutterFlowTheme.of(context)
                                    .secondaryBackground
                                : FlutterFlowTheme.of(context).alternate,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        children: pages,
        index: selectedPage,
      ),
    );
  }
}
