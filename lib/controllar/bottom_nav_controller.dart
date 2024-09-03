import 'package:bettertogether_2/pages/home.dart';
import 'package:bettertogether_2/pages/settings.dart';
import 'package:bettertogether_2/pages/user.dart';
import 'package:bettertogether_2/pages/workout.dart';
import 'package:get/get.dart';

class bottomnavcontrol extends GetxController{
  RxInt index = 0.obs;
  var pages = [
    home(),
    workout(),
    user(),
    setting(),
  ];
}