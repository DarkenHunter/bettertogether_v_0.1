import 'package:flutter/material.dart';

import '../../components/timer.dart';

class jumpingjacks extends StatelessWidget {
  const jumpingjacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimerPage(
        contentname: 'Jumping jack',
        contentt_img: 'https://images.unsplash.com/photo-1568614422084-ea8aeefd4e58?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        prev_link: '/workout',
        next_link: '/rear_lat_puldown',

      ),
    );
  }
}

class rear_lat_puldown extends StatelessWidget {
  const rear_lat_puldown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimerPage(
        contentname: 'Rear Lat Puldown',
        contentt_img: 'https://i0.wp.com/www.muscleandfitness.com/wp-content/uploads/2018/04/1109-wide-grip-lat-pulldown.jpg?quality=86&strip=all',
        prev_link: '/jjumpingjacks',
        next_link: '/arm_circles_clockwise',
      ),
    );
  }
}

class arm_circles_clockwise extends StatelessWidget {
  const arm_circles_clockwise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimerPage(
        contentname: 'Arm Circles Clockwise',
        contentt_img: 'https://storage.googleapis.com/sworkit-assets/images/exercises/standard/middle-frame/power-circle.jpg',
        prev_link: '/rear_lat_puldown',
        next_link: '/NavigationMenu',
      ),
    );
  }
}
