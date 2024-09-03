import 'package:bettertogether_2/Theme/theme.dart';
import 'package:bettertogether_2/pages/discover/six_pack_challange.dart';
import 'package:bettertogether_2/pages/home.dart';
import 'package:bettertogether_2/pages/settings.dart';
import 'package:bettertogether_2/pages/user.dart';
import 'package:bettertogether_2/pages/workout.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'controllar/bottom_nav_controller.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    bottomnavcontrol controller = Get.put(bottomnavcontrol());
    return Scaffold(
      body: Obx(
        () => controller.pages[controller.index.value],),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GNav(
              onTabChange: (value){
                print(value);
                controller.index.value = value;
              },
              haptic: true,
              gap: 8,
              activeColor: Theme.of(context).colorScheme.primary,
              tabBackgroundColor: Theme.of(context).colorScheme.tertiary.withOpacity(.1),
              padding: EdgeInsets.all(12),
              tabs: [
                GButton(
                  icon: Iconsax.search_status,
                  text: 'Discover',
                ),
                GButton(
                  icon: Iconsax.weight_1,
                  text: 'Workout',
                ),
                GButton(
                  icon: Iconsax.user,
                  text: 'Profile',
                ),
                GButton(
                  icon: Iconsax.setting_2,
                  text: 'Settings',
                )
              ]
          )

      ),
    );
  }
}