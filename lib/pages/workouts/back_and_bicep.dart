import 'package:bettertogether_2/Theme/theme.dart';
import 'package:bettertogether_2/components/box.dart';
import 'package:bettertogether_2/components/timer.dart';
import 'package:bettertogether_2/pages/discover/six_pack_challange.dart';
import 'package:bettertogether_2/pages/discover/build_your_muscle.dart';
import 'package:bettertogether_2/pages/discover/healthy_diets.dart';
import 'package:bettertogether_2/pages/home.dart';
import 'package:bettertogether_2/pages/settings.dart';
import 'package:bettertogether_2/pages/user.dart';
import 'package:bettertogether_2/pages/workout.dart';
import 'package:bettertogether_2/pages/workouts/back_and_bicep.dart';
import 'package:bettertogether_2/pages/workouts/chest_and_tricep.dart';
import 'package:bettertogether_2/pages/workouts/legs_and_delts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../components/workout_components.dart';

class back_and_bicep extends StatelessWidget {
  back_and_bicep({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Back & Bicep Workouts', style:
        GoogleFonts.delaGothicOne(
            fontSize: 20,
            fontWeight: FontWeight.w100,
            color: Theme.of(context).colorScheme.primary),

        ),
        centerTitle: true,
        backgroundColor: HexColor('#fff8ee'),
        forceMaterialTransparency: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => TimerPage()
            ),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 50,
        highlightElevation: 50,
        label: Text('            Start            ',style:
            GoogleFonts.delaGothicOne(
            fontSize: 18,
            fontWeight: FontWeight.w100,
            color: Theme.of(context).colorScheme.primaryContainer),),
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1621750627159-cf77b0b91aac?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
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
            )
          ),
          workout_components(
              contentname: 'Jumping Jacks',
              contentdes: '30 sec',
              contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#FF5400'),
            ),
          workout_components(
            contentname: 'Rear Lat Pulldown ',
            contentdes: 'x8 3set',
            contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            color: HexColor('#FF5400'),
          ),
          workout_components(
            contentname: 'Rear Lat Pulldown ',
            contentdes: 'x8 3set',
            contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            color: HexColor('#FF5400'),
          ),
          workout_components(
            contentname: 'Rear Lat Pulldown ',
            contentdes: 'x8 3set',
            contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            color: HexColor('#FF5400'),
          ),
          workout_components(
            contentname: 'Rear Lat Pulldown ',
            contentdes: 'x8 3set',
            contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            color: HexColor('#FF5400'),
          ),
          workout_components(
            contentname: 'Rear Lat Pulldown ',
            contentdes: 'x8 3set',
            contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            color: HexColor('#FF5400'),
          ),

        ],
      ),
    );
  }
}
