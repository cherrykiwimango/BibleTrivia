import 'package:bibletrivia/screens/QuizScreen.dart';
import 'package:bibletrivia/style/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true); // Repeat animation back and forth

    // Define the Tween for scaling
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BibleYatra',
                  style: GoogleFonts.luckiestGuy(
                    fontSize: 34,
                    color: Palette.primary,
                    shadows: [
                      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.secondary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Stack(
                      children: [
                        Icon(
                          Icons.settings,  // Outlined heart (regular style)
                          size: 40,
                          color: Palette.primary,
                          shadows: [
                            Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                            Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                            Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                            Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                          ],
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      shadowColor: WidgetStatePropertyAll(Palette.secondary),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Season 2',
                style: TextStyle(
                  fontSize: 26,
                  color: Palette.secondary,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome back ",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      )
                    ),
                    TextSpan(
                        text: "Allen!",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        )
                    )
                  ]
                )
              ),
            ),
            SizedBox(height: 45,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Day 346',
                style: TextStyle(
                  color: Palette.secondary,
                  fontSize: 50,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Today's bible portion",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Palette.primary,
                border: Border.all(color: Palette.secondary),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "St. Paul to the Corinthians ",
                            style: TextStyle(
                              color: Palette.secondary,
                              fontSize: 38,
                            )
                        ),
                        TextSpan(
                            text: "Ch-01 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              shadows: [
                                Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                                Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                                Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                                Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                              ],
                            )
                        ),
                        TextSpan(
                            text: "to ",
                            style: TextStyle(
                              color: Palette.secondary,
                              fontSize: 38,
                            )
                        ),
                        TextSpan(
                            text: "Ch-04 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              shadows: [
                                Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                                Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                                Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                                Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                              ],
                            )
                        ),
                      ]
                  )
              ),
            ),
            SizedBox(height: 25,),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child){
                return Transform.scale(
                  scale: _animation.value,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen(),));
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Palette.secondary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Play Today's quiz",
                        style: GoogleFonts.luckiestGuy(
                          fontSize: 36,
                          color: Palette.primary,
                          height: 0.8,
                          shadows: [
                            Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                            Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                            Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                            Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 40,),
            Container(
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

          ],
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
