import 'package:bibletrivia/style/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BibleYatra',
                    style: GoogleFonts.luckiestGuy(
                      fontSize: 36,
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
                      border: Border.all(color: Palette.primary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Stack(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.gear,  // Outlined heart (regular style)
                            size: 40,
                            color: Palette.secondary,
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
                    fontSize: 30,
                    color: Palette.secondary,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              SvgPicture.asset(
                'assets/icons/darksunglasses-svgrepo-com 1.svg',
                height: 60,
              ),
              SizedBox(height: 20,),
              Text(
                textAlign: TextAlign.center,
                'Get your reading glasses on!',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Palette.secondary,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 50,),
              Text(
                'SCORE',
                style: TextStyle(
                  color: Palette.secondary,
                  fontSize: 50,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 15.0, right: 15.0, bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.secondary),
                  borderRadius: BorderRadius.circular(10),
                ),

                //Score text replace with variable
                child: Text(
                  '99999',
                  style: GoogleFonts.luckiestGuy(
                    fontSize: 100,
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Palette.secondary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '300',
                      style: GoogleFonts.luckiestGuy(
                        fontSize: 45,
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
                  Text(
                    'Day Streak!',
                    style: TextStyle(
                      color: Palette.secondary,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Play Today's quiz",
                    style: GoogleFonts.luckiestGuy(
                      fontSize: 32,
                      color: Palette.secondary,
                      height: 0.8,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Go to menu",
                    style: GoogleFonts.luckiestGuy(
                      fontSize: 28,
                      color: Palette.secondary,
                      height: 0.8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
