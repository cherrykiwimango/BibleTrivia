import 'package:bibletrivia/style/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Thank you for playing!",
                style: TextStyle(
                  color: Palette.secondary,
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Palette.secondary),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Current streak",
                        style: TextStyle(
                            fontSize: 26,
                            color: Palette.secondary
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "365 days",
                            style: TextStyle(
                              fontSize: 32,
                              color: Palette.primary,
                              shadows: [
                                Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                                Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                                Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                                Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                              ],
                            ),
                          ),
                          SizedBox(width:10,),
                          Icon(
                            Icons.local_fire_department_rounded,
                            color: Colors.orange,
                            size: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "Your stats:",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  color: Palette.secondary,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Palette.secondary),
                      ),
                      child: Icon(
                        Icons.access_time_filled_outlined,
                        color: Palette.primary,
                        size: 30,
                          shadows: [
                            Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                            Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                            Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                            Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                          ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "Time: 00:43",
                    style: TextStyle(
                      fontSize: 28,
                      color: Palette.secondary,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Palette.secondary),
                      ),
                      child: Icon(
                        Icons.leaderboard,
                        color: Palette.primary,
                        size: 30,
                        shadows: [
                          Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                          Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                          Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                          Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "Score: 8/10",
                    style: TextStyle(
                      fontSize: 28,
                      color: Palette.secondary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Palette.secondary),
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.primary
                    ),
                    child: Text(
                      "Home",
                      style: GoogleFonts.luckiestGuy(
                        fontSize: 36,
                        color: Palette.secondary,
                        height: 0.8,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Palette.secondary),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.access_time_filled_outlined,
                    color: Palette.primary,
                    size: 30,
                    shadows: [
                      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "Past quizzes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Palette.secondary),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.leaderboard,
                    color: Palette.primary,
                    size: 30,
                    shadows: [
                      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "LeaderBoard",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
