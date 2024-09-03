import 'package:bettertogether_2/Theme/theme.dart';
import 'package:bettertogether_2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/time_provider.dart';
import 'components/timer.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>  TimerProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavigationMenu(),
        title: 'Better Together',
        theme: ThemeClass.lightMode,
        darkTheme: ThemeClass.darkMode,
        themeMode: ThemeMode.system,
      ),
    );
  }
}



