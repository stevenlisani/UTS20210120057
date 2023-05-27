import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'detail_berita_model.dart';
export 'detail_berita_model.dart';

class DetailBeritaWidget extends StatefulWidget {
  const DetailBeritaWidget({Key? key}) : super(key: key);

  @override
  _DetailBeritaWidgetState createState() => _DetailBeritaWidgetState();
}

class _DetailBeritaWidgetState extends State<DetailBeritaWidget> {
  late DetailBeritaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailBeritaModel());
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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Container(
                width: 390,
                height: 94,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 390,
                      height: 88,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.95, -0.85),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20,
                              borderWidth: 0,
                              buttonSize: 40,
                              hoverIconColor:
                                  FlutterFlowTheme.of(context).error,
                              icon: FaIcon(
                                FontAwesomeIcons.angleLeft,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, -0.6),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Kylian Mbappe Berpeluang \nPatahkan Rekor 65 tahun',
                                maxLines: 2,
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Noto Sans',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
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
            Container(
              width: 390,
              height: 647,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'Paris - Kylian Mbappe sangat dekat untuk mematahkan rekor gol pesepakbola Prancis yang sudah bertahan selama 65 tahun. Seperti ini hitung-hitungannya.\nMbappe amat produktif di level klub dan tim nasional musim ini. Bomber Paris Saint-Germain itu sudah mengumpulkan 51 gol di semua kompetisi.\n\nRinciannya, 40 gol dibuat Mbappe bersama PSG. 11 gol lain dia torehkan dengan seragam Timnas Prancis.\n\nKylian Mbappe berpeluang menambah golnya sebelum musim 2022/2023 habis. Penyerang 24 tahun itu di ambang sejarah sebagai pesepakbola Prancis paling tajam dalam semusim.\n\nMbappe bisa menyalip rekor yang sebelumnya dibuat legenda Timnas Prancis, Just Fontaine. Eks bomber Stade de Reims itu mengumpulkan total 53 gol pada musim 1957/1958, atau 65 tahun lalu.\n\nPSG saat ini menyisakan dua pertandingan melawan Strasbourg dan Clermont di Liga Prancis. Mbappe punya kans besar mencetak gol, mengingat dirinya selalu membobol gawang lawan dalam enam laga terakhir di Ligue 1.\n\nApabila gagal mewujudkannya di level klub, Mbappe bisa menebusnya di Timnas Prancis. Les Bleus bakal menghadapi Gibraltar dan Yunani pada kualifikasi Piala Eropa 2024 bulan depan.\n\n',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: 930,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, -10),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 5),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 15,
                          borderWidth: 0,
                          buttonSize: 40,
                          fillColor: Color(0xFF00C9C8),
                          hoverColor: Color(0xFF227977),
                          icon: Icon(
                            Icons.home,
                            color: Color(0xFF227977),
                            size: 20,
                          ),
                          onPressed: () async {
                            context.pushNamed('Home');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 5),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 15,
                          borderWidth: 0,
                          buttonSize: 40,
                          fillColor: Color(0xFF96FCF9),
                          hoverColor: Color(0xFF227977),
                          icon: Icon(
                            Icons.search,
                            color: Color(0xFF227977),
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('Search');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 5),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 15,
                          borderWidth: 0,
                          buttonSize: 40,
                          fillColor: Color(0xFF96FCF9),
                          hoverColor: Color(0xFF227977),
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFF227977),
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('Favorite');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 0, 0, 5),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 15,
                          borderWidth: 0,
                          buttonSize: 40,
                          fillColor: Color(0xFF96FCF9),
                          hoverColor: Color(0xFF227977),
                          icon: Icon(
                            Icons.settings_sharp,
                            color: Color(0xFF227977),
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('Profile');
                          },
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
    );
  }
}
