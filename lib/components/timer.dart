import 'package:bettertogether_2/components/time_provider.dart';
import 'package:bettertogether_2/navbar.dart';
import 'package:bettertogether_2/pages/exercise/back_and_bicep_workouts.dart';
import 'package:bettertogether_2/pages/home.dart';
import 'package:bettertogether_2/pages/workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import '../pages/discover/build_your_muscle.dart';



class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final timerProvider = Provider.of<TimerProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      // appBar: AppBar(
      //   title: Text('Discover', style:
      //   GoogleFonts.delaGothicOne(
      //       fontSize: 20,
      //       fontWeight: FontWeight.w100,
      //       color: Theme.of(context).colorScheme.primary),
      //
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Theme.of(context).colorScheme.surface,
      //   forceMaterialTransparency: true,
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => workout()
          ),
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(.1),
        elevation: 50,
        highlightElevation: 50,
        child: Icon(
          Icons.close_rounded,
          size: 25,
          color: Colors.white,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1568614422084-ea8aeefd4e58?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 12,
                      offset: Offset(4, 4)
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 64),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: Text('Jumping Jacks', style:
                        GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimaryContainer),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => _showTimePicker(context, timerProvider),
                                    child: Text(
                                      _formatTime(timerProvider.remainingTime),
                                      style:
                                      GoogleFonts.poppins(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).colorScheme.primary),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context, MaterialPageRoute(
                                      builder: (context) => build_your_muscle()),);
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(.1),
                                          blurRadius: 12,
                                          offset: Offset(4, 4)
                                      )
                                    ],
                                    color: Theme.of(context).colorScheme.primaryContainer,
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_rounded,
                                    size: 35,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 30),
                              // play/paus icon
                              GestureDetector(
                                onTap: timerProvider.isRunning
                                    ? timerProvider.pauseTimer
                                    : timerProvider.startTimer,
                                child: Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(64),
                                      color: Theme.of(context).colorScheme.secondary
                                  ),
                                  child: timerProvider.isRunning
                                      ? Icon(
                                    Iconsax.pause,
                                    size: 25,
                                    color: Theme.of(context).colorScheme.primaryContainer,
                                  )
                                      : Icon(
                                    Icons.play_arrow_rounded,
                                    size: 35,
                                    color: Theme.of(context).colorScheme.primaryContainer,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              // reste time icon
                              GestureDetector(
                                onTap: timerProvider.resetTimer,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                  child: Icon(
                                    Icons.restart_alt_rounded,
                                    size: 35,
                                    color: Theme.of(context).colorScheme.primaryContainer,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context, MaterialPageRoute(
                                      builder: (context) => jumpingjacks()),);
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(.1),
                                          blurRadius: 12,
                                          offset: Offset(4, 4)
                                      )
                                    ],
                                    color: Theme.of(context).colorScheme.primaryContainer,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 35,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

  //Displays the CupertinoTimerPicker to select the timer duration.
  void _showTimePicker(BuildContext context, TimerProvider timerProvider) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hms,
            initialTimerDuration:
            Duration(seconds: timerProvider.remainingTime),
            onTimerDurationChanged: (Duration newDuration) {
              if (newDuration.inSeconds > 0) {
                timerProvider.setTime(newDuration.inSeconds);
              }
            },
          ),
        );
      },
    );
  }

  // Formats the remaining time into a readable string (HH:MM:SS).
  String _formatTime(int totalSeconds) {
    int hours = totalSeconds ~/ 3600;
    int minutes = (totalSeconds % 3600) ~/ 60;
    int seconds = totalSeconds % 60;

    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}