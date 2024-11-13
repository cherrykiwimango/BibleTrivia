import 'package:bibletrivia/screens/QuizPortion.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style/palette.dart';
import 'MainScreen.dart';

class DaysScreen extends StatefulWidget {
  final int monthIndex;

  DaysScreen({Key? key, required this.monthIndex})
      : super(key: key);
  @override
  State<DaysScreen> createState() => _DaysScreenState();
}

class _DaysScreenState extends State<DaysScreen> {

  final List<int> daysInMonth = [
    31, // January
    28, // February (non-leap year)
    31, // March
    30, // April
    31, // May
    30, // June
    31, // July
    31, // August
    30, // September
    31, // October
    30, // November
    31, // December
  ];

  @override
  Widget build(BuildContext context) {
    int monthIndex = widget.monthIndex;
    int totalDaysUpToMonth = 0;
    for (int i = 0; i < monthIndex - 1; i++) {
      totalDaysUpToMonth += daysInMonth[i];
    }

    int daysInCurrentMonth = daysInMonth[monthIndex - 1];
    List<int> dayNumbers = List.generate(daysInCurrentMonth, (index) => totalDaysUpToMonth + index + 1);



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
              SizedBox(height: 40,),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5/1,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: dayNumbers.length,
                  itemBuilder: (context, index){
                    final day = dayNumbers[index];
                    return Padding(
                      padding: EdgeInsets.all(1.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizPortion(currDay: day),
                            )
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Palette.secondary),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Day $day',
                            style: GoogleFonts.luckiestGuy(
                              fontSize: 24,
                              color: Palette.secondary,
                              height: 3.4,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
