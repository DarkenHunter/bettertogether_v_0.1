import 'package:bettertogether_2/Theme/theme.dart';
import 'package:bettertogether_2/components/box.dart';
import 'package:bettertogether_2/components/timer.dart';
import 'package:bettertogether_2/pages/discover/six_pack_challange.dart';
import 'package:bettertogether_2/pages/discover/build_your_muscle.dart';
import 'package:bettertogether_2/pages/discover/healthy_diets.dart';
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

import '../components/contetns.dart';
import '../components/workout_components.dart';
import '../navbar.dart';
import 'discover/inner_peace.dart';

class workout extends StatelessWidget {
  workout({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Workouts', style:
        GoogleFonts.delaGothicOne(
            fontSize: 20,
            fontWeight: FontWeight.w100,
            color: HexColor('#FF5400')),

        ),
        centerTitle: true,
        backgroundColor: HexColor('#fff8ee'),
        forceMaterialTransparency: true,
      ),

      body: ListView(
        children: [
          InkWell(
          child: workout_components(
            contentname: 'Back & Bicep',
            contentdes: '18 min',
            contantimg: 'https://images.unsplash.com/photo-1683105164144-fdd8a29bd8c9?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            color: HexColor('#FF5400'),
          ),
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => back_and_bicep()),);
          },
        ),

          InkWell(
            child: workout_components(
              contentname: 'Chest & Tricep',
              contentdes: '12 min',
              contantimg: 'https://images.unsplash.com/photo-1532384555668-bc0c32a17ffd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#FF5400'),
            ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => chest_and_tricep()),);
            },
          ),

          InkWell(
            child: workout_components(
              contentname: 'Legs and Delts',
              contentdes: '15 min',
              contantimg: 'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#FF5400'),
            ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => legs_and_delts()),);
            },
          ),
        ],
      ),
    );
  }
}
