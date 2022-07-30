import '../auth/auth_util.dart';
import '../book/book_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SampleWidget extends StatefulWidget {
  const SampleWidget({Key key}) : super(key: key);

  @override
  _SampleWidgetState createState() => _SampleWidgetState();
}

class _SampleWidgetState extends State<SampleWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.easeOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(79, 0),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.home,
              color: Color(0xFFF8FCFF),
              size: 20,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NavBarPage(initialPage: 'easternPhilo'),
                ),
              );
            },
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.favorite,
              color: Color(0xFFF8FCFF),
              size: 25,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: FlutterFlowExpandedImageView(
                        image: Image.asset(
                          'assets/images/aduc7_-.jpg',
                          fit: BoxFit.contain,
                        ),
                        allowRotation: false,
                        tag: 'carImageTag',
                        useHeroAnimation: true,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: 'carImageTag',
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    'assets/images/aduc7_-.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
              ).animated([animationsMap['imageOnPageLoadAnimation']]),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            'السنة',
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Playfair Display',
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                        Text(
                          '1332',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            'أهم الأعمال',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                        Text(
                          'المقدمة',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            'المجال',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                        Text(
                          'علم الاجتماع',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Playfair Display',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x43000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/imageLogo@3x.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Fleet Assistant',
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                  Text(
                                    '4:30pm',
                                    textAlign: TextAlign.end,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.05, 0),
                                      child: Text(
                                        'الناس في السكينة سواء فإن جاءت المحن تباينوا.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Playfair Display',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 17,
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFB8A926),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x37000000),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Icon(
                                      Icons.format_quote,
                                      color: Color(0xFFF8FCFF),
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'اقتباسات',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Playfair Display',
                                      color: Color(0xFFF8FCFF),
                                      fontSize: 30,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x39000000),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookWidget(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: Icon(
                                    Icons.menu_book_rounded,
                                    color: Colors.white,
                                    size: 44,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: AutoSizeText(
                                    'الكتب',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Playfair Display',
                                          color: Colors.white,
                                          fontSize: 30,
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
    );
  }
}
