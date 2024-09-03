import 'package:bettertogether_2/Theme/theme.dart';
import 'package:bettertogether_2/components/box.dart';
import 'package:bettertogether_2/pages/discover/six_pack_challange.dart';
import 'package:bettertogether_2/pages/discover/build_your_muscle.dart';
import 'package:bettertogether_2/pages/discover/healthy_diets.dart';
import 'package:bettertogether_2/pages/settings.dart';
import 'package:bettertogether_2/pages/user.dart';
import 'package:bettertogether_2/pages/workout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../components/contetns.dart';
import '../navbar.dart';
import 'discover/inner_peace.dart';

class home extends StatelessWidget {
  home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Discover', style:
        GoogleFonts.delaGothicOne(
            fontSize: 20,
            fontWeight: FontWeight.w100,
            color: Theme.of(context).colorScheme.primary),

        ),
        centerTitle: true,
        backgroundColor: HexColor('#fff8ee'),
        forceMaterialTransparency: true,
      ),


      body: ListView(
        children: [
          InkWell(
            child: contents(
              contentname: 'Six Pack Challange',
              contentdes: 'Shread bally fat & unvail your six-pack abs!',
              contantimg: 'https://images.unsplash.com/photo-1577221084712-45b0445d2b00?q=80&w=1996&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#FF5400'),
            ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => six_pack_challange()),);
              },

          ),
          InkWell(
            child: contents(
              contentname: 'Build Your Muscles',
              contentdes: 'Take the weights and make em go big',
              contantimg: 'https://images.unsplash.com/photo-1532384816664-01b8b7238c8d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#FF5400'),
            ),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => build_your_muscle()),);
              },
          ),
          InkWell(
            child: contents(
              contentname: 'Healthy Diets',
              contentdes: 'Eat healthy Stay healthy',
              contantimg: 'https://plus.unsplash.com/premium_photo-1723478415102-952f63daf8c7?q=80&w=2078&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#93ff9a'),
            ),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => healthy_diets()),);
            },
          ),

          InkWell(
            child: contents(
              contentname: 'Inner Peace',
              contentdes: 'Take time for yourself and gain innerpeace',
              contantimg: 'https://images.unsplash.com/photo-1602192509154-0b900ee1f851?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              color: HexColor('#61cbe7'),
            ),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => inner_peace()),);
            },
          ),
        ],
      ),
    );
  }
}
