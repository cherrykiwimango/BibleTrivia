import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/palette.dart';

class QuizPortion extends StatefulWidget {
  final int currDay;

  QuizPortion({Key? key, required this.currDay})
      : super(key: key);

  @override
  State<QuizPortion> createState() => _QuizPortionState();
}

class _QuizPortionState extends State<QuizPortion> {

  @override
  Widget build(BuildContext context) {
    int currDay = widget.currDay;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.secondary),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Stack(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.arrowLeft,  // Outlined heart (regular style)
                        size: 35,
                        color: Palette.primary,
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Palette.secondary),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Day $currDay",
                style: TextStyle(
                  fontSize: 32,
                  color: Palette.secondary,
                ),
              ),
            ),
            SizedBox(height: 25,),
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
                border: Border.all(color: Palette.secondary),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Book of The Second Epistle of Paul to the Corinthians ",
                      style: TextStyle(
                        color: Palette.secondary,
                        fontSize: 38,
                      )
                    ),
                    TextSpan(
                        text: "Ch-01 ",
                        style: TextStyle(
                          color: Palette.primary,
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
                          color: Palette.primary,
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
            SizedBox(height: 50,),
            Text(
              'Go grab a bible or your fav bible app and get reading!',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Icon(
              Icons.book,
              color: Palette.secondary,
              size: 130,
            ),
            SizedBox(height: 40,),
            Center(
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.secondary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Go to quiz",
                    style: GoogleFonts.luckiestGuy(
                      fontSize: 32,
                      color: Palette.secondary,
                      height: 0.8,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: FaIcon(
                FontAwesomeIcons.arrowRight,
                size: 50,
                color: Palette.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
