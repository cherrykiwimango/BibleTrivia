import 'dart:async';
import 'package:bibletrivia/screens/MainScreen.dart';
import 'package:bibletrivia/style/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ScoreScreen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int seconds = 0;
  int minutes = 0;
  Timer? _timer, _timer2;
  bool clicked = false;
  List<int?> selectedOptions = List<int?>.filled(4, null);

  List<String> questions = [
    "What was the first miracle performed by Jesus according to the Bible?",
    "Which book of the Bible begins with 'In the beginning God created the heavens and the earth'?",
    "What is the greatest commandment according to Jesus?",
    "What did God promise Noah after the flood?"
  ];

  List<List<String>> options = [
    [
      "Turning water into wine at the wedding in Cana.",
      "Healing a blind man near Jericho.",
      "Feeding five thousand people with five loaves and two fish.",
      "Walking on water during a storm."
    ],
    [
      "Genesis",
      "Exodus",
      "Psalms",
      "John"
    ],
    [
      "Love the Lord your God with all your heart, soul, and mind.",
      "Do unto others as you would have them do unto you.",
      "Keep the Sabbath day holy and honor your father and mother.",
      "Thou shall not commit adultery or steal."
    ],
    [
      "That He would never destroy the earth with a flood again, signified by a rainbow.",
      "That Noah's descendants would become a great nation.",
      "That He would provide manna from heaven during their journey.",
      "That Noah's family would inherit the promised land of Canaan."
    ]
  ];

  @override
  void initState(){
    super.initState();
    _startTimer();
  }

  void _startTimer(){
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
       seconds++;
       if(seconds>59){
         seconds = 0;
       }
      });
    });
    _timer2 = Timer.periodic(Duration(minutes: 1), (timer){
      setState(() {
        minutes++;
        if(minutes>59){
          minutes = 0;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Clean up the timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.secondary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
                    },
                    icon: Stack(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.arrowLeft,  // Outlined heart (regular style)
                          size: 30,
                          color: Palette.primary,
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      shadowColor: WidgetStatePropertyAll(Palette.secondary),
                    ),
                  ),
                ),
                // Spacer(),
                Text(
                  "Day 346",
                  style: TextStyle(
                    fontSize: 38,
                    color: Palette.secondary,
                  ),
                ),
                Container(),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: "Ch-01 ",
                              style: TextStyle(
                                color: Palette.primary,
                                fontSize: 28,
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
                                fontSize: 28,
                              )
                          ),
                          TextSpan(
                              text: "Ch-04 ",
                              style: TextStyle(
                                color: Palette.primary,
                                fontSize: 28,
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
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.secondary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}",
                    // "00:00",
                    style: TextStyle(
                      color: Palette.secondary,
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: questions.length,
              itemBuilder: (context, outerIndex) {
                final question = questions[outerIndex];
                final totaloption = options[outerIndex];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          question.toString(),
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: Palette.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: totaloption.length,
                        itemBuilder: (context, innerIndex) {
                          final option = totaloption[innerIndex];
                          final isSelected = selectedOptions[outerIndex] == innerIndex;
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedOptions[outerIndex] = innerIndex;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Palette.secondary),
                                  color: isSelected ? Palette.primary : null,
                                ),
                                child: Text(
                                  option.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 18,
                                    color: Palette.secondary,
                                    fontWeight: isSelected ? FontWeight.bold : null,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreScreen(),));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.secondary),
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.primary,
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.luckiestGuy(
                      fontSize: 36,
                      color: Palette.secondary,
                      height: 0.8,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
