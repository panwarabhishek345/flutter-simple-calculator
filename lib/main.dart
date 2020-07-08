import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    '100 + 49 + 7',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '637',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: 'AC',
                    fillColor: 0xFF6C807F,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: '+/-',
                    fillColor: 0xFF6C807F,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: '%',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                  ),
                  CalcButton(
                    text: '÷',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '7'),
                  CalcButton(text: '8'),
                  CalcButton(text: '9'),
                  CalcButton(
                    text: 'x',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 24,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '4'),
                  CalcButton(text: '5'),
                  CalcButton(text: '6'),
                  CalcButton(
                    text: '-',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 38,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(text: '1'),
                  CalcButton(text: '2'),
                  CalcButton(text: '3'),
                  CalcButton(
                    text: '+',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '.',
                  ),
                  CalcButton(
                    text: '0',
                  ),
                  CalcButton(text: 'C'),
                  CalcButton(
                    text: '=',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
