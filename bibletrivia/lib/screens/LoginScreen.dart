import 'package:bibletrivia/screens/MainScreen.dart';
import 'package:bibletrivia/screens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/palette.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log In to",
                style: TextStyle(
                  fontSize: 28,
                  color: Palette.secondary,
                ),
              ),
              Text(
                "BibleYatra",
                style: TextStyle(
                  fontSize: 50,
                  color: Palette.primary,
                  shadows: [
                    Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                    Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                    Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                    Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                  ],
                ),
              ),
              SizedBox(height: 30,),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                },
                child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Palette.secondary,
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                          TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Palette.primary,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ]
                    )
                ),
              ),
              SizedBox(height: 50,),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Palette.secondary),
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.primary
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Continue with Google",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            // height: 0.8,
                            shadows: [
                              Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                              Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                              Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                              Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                            ],
                          ),
                        ),
                        SizedBox(width: 15,),
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 25,
                          shadows: [
                            Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                            Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                            Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                            Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "or",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Palette.primary,
                    shadows: [
                      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black), // Top-left shadow
                      Shadow(offset: Offset(1.5, -1.5), color: Colors.black),  // Top-right shadow
                      Shadow(offset: Offset(1.5, 1.5), color: Colors.black),   // Bottom-right shadow
                      Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),  // Bottom-left shadow
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Palette.secondary),
                    ),
                    hintText: "Enter email",
                    hintStyle: TextStyle(
                        color: Palette.secondary,
                        fontSize: 18,
                        fontFamily: 'Roboto'
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Palette.secondary),
                  ),
                  hintText: "Enter password",
                  hintStyle: TextStyle(
                      color: Palette.secondary,
                      fontSize: 18,
                      fontFamily: 'Roboto'
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      color: Palette.primary,
                      border: Border.all(color: Palette.secondary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Log In",
                      style: GoogleFonts.luckiestGuy(
                        fontSize: 28,
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
    );
  }
}
