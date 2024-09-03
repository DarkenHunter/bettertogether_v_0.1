import 'package:bettertogether_2/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class contents extends StatelessWidget {

  final String contentname;
  final String contentdes;
  final String contantimg;
  final Color color;

  const contents({
    super.key,
    required this.contentname,
    required this.contentdes,
    required this.contantimg,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    contantimg),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 12,
                  offset: Offset(4, 4)
            )
          ],
        ),
        //padding: EdgeInsets.only(left: 32, right: 32, top: 64, bottom: 64),
        child: Container(
          padding: EdgeInsets.only(left: 32, right: 32, top: 96,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black
                  ],


              )
            ),
          child: Column(
            children: [ Align(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    contentname,style:
                  GoogleFonts.delaGothicOne(
                  fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: color),),
                  ),
                ),
              Align(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                  child: Text(
                    contentdes, style:
                  GoogleFonts.poppins(
                  fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),),
                  ),
                ),
            ],
          )
          ),



      ),


        
    );
  }
}
