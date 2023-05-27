import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'register_model.dart';
export 'register_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 477,
              height: 221,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/logo_berita.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'News Sixtitu',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 390,
              height: 366,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 390,
                    height: 70,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Create an Account',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                  Container(
                    width: 390,
                    height: 285,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 390,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 0, 0, 0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Name',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Source Sans Pro',
                                                color: Colors.black,
                                                fontSize: 20,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 5, 8, 0),
                                  child: TextFormField(
                                    controller: _model.textController1,
                                    autofocus: true,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Input Your Name',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 18,
                                            letterSpacing: 1,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              30, 0, 0, 0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.black,
                                          fontSize: 18,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 390,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 0, 0, 0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Email',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Source Sans Pro',
                                                color: Colors.black,
                                                fontSize: 20,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 5, 8, 0),
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    autofocus: true,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Input Your Email',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 18,
                                            letterSpacing: 1,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              30, 0, 0, 0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.black,
                                          fontSize: 18,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 390,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 0, 0, 0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Password',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Source Sans Pro',
                                                color: Colors.black,
                                                fontSize: 20,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 5, 8, 0),
                                  child: TextFormField(
                                    controller: _model.textController3,
                                    autofocus: true,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      hintText: 'Input Your Password',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 18,
                                            letterSpacing: 1,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              30, 0, 0, 0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Source Sans Pro',
                                          color: Colors.black,
                                          fontSize: 18,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: _model.textController3Validator
                                        .asValidator(context),
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
            Container(
              width: 390,
              height: 210,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Sign Up',
                      options: FFButtonOptions(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).success,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w800,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        hoverColor: Color(0xFF39A76C),
                      ),
                    ),
                  ),
                  Container(
                    width: 390,
                    height: 44,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'or continue with',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 19,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 390,
                    height: 70,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Btn_FB pressed ...');
                            },
                            text: 'Facebook',
                            icon: FaIcon(
                              FontAwesomeIcons.facebookSquare,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 50,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).accent4,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Color(0x1E000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              hoverColor: Color(0xFFB8B8B8),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button_Google pressed ...');
                            },
                            text: 'Google',
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 50,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: FlutterFlowTheme.of(context).accent4,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Source Sans Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Color(0x1A000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              hoverColor: Color(0xFFB8B8B8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 390,
                    height: 49,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 17,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'Login',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 20),
                                ),
                              },
                            );
                          },
                          text: 'Sign In',
                          options: FFButtonOptions(
                            width: 70,
                            height: 40,
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Color(0x004B39EF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Source Sans Pro',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 17,
                                ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            hoverTextColor: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
