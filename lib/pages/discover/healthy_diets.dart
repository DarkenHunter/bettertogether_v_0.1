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

import '../../components/contetns.dart';
import 'inner_peace.dart';


class healthy_diets extends StatelessWidget {
  healthy_diets({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Healthy Diets', style:
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
              contentname: 'Breakfast',
              contentdes: 'Peanut Butter Banana Overnight Oats',
              contantimg: 'https://therealfooddietitians.com/wp-content/uploads/2024/07/Peanut-Butter-Banana-Overnight-Oats-12.jpg',
              color: HexColor('#93ff9a'),
            ),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => six_pack_challange()),);
            },

          ),
          InkWell(
            child: contents(
              contentname: 'Lunch',
              contentdes: 'High Protein Chicken Burrito Bowl',
              contantimg: 'https://cdn.muscleandstrength.com/sites/default/files/field/feature-image/recipe/burrito-bowl-feature.jpg',
              color: HexColor('#93ff9a'),
            ),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => build_your_muscle()),);
            },
          ),
          InkWell(
            child: contents(
              contentname: 'Dinner',
              contentdes: 'Easy Pesto Chicken & Veg Meal Prep',
              contantimg: 'https://static.thcdn.com/images/v2/app/uploads/sites/478/2022/01/FEATURE-Pesto-Chicken-Veg_MP_KITCHENRECIPESQ4_SHOT5-min1_1642693034.jpg?width=700',
              color: HexColor('#93ff9a'),
            ),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => healthy_diets()),);
            },
          ),
        ],
      ),
    );
  }
}
