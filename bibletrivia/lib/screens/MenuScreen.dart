import 'package:bibletrivia/screens/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../style/palette.dart';
import 'DaysScreen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<Map<String, dynamic>> months = [
    {'month': 'Jan', 'index': 1},
    {'month': 'Feb', 'index': 2},
    {'month': 'Mar', 'index': 3},
    {'month': 'Apr', 'index': 4},
    {'month': 'May', 'index': 5},
    {'month': 'Jun', 'index': 6},
    {'month': 'Jul', 'index': 7},
    {'month': 'Aug', 'index': 8},
    {'month': 'Sep', 'index': 9},
    {'month': 'Oct', 'index': 10},
    {'month': 'Nov', 'index': 11},
    {'month': 'Dec', 'index': 12},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
          child: Column(
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
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                            (route) => false,
                      );
                      print("the button is working");
                    },
                    icon: Stack(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.house,  // Outlined heart (regular style)
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
              SizedBox(height: 80,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(top: 18.0, left: 15.0, right: 15.0, bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.secondary),
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
              SizedBox(height: 50,),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5/1,
                  ),
                  itemCount: months.length, // Number of buttons
                  itemBuilder: (context, index) {
                    final button = months[index];
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DaysScreen(monthIndex: button['index']),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 14.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Palette.secondary),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            button['month'],
                            style: GoogleFonts.luckiestGuy(
                              fontSize: 36,
                              color: Palette.primary,
                              height: 2.0,
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
              ),
              Text(
                'Recite a Hail Mary for your BestFriend!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
