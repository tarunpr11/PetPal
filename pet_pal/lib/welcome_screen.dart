import 'package:flutter/material.dart';
import 'package:pet_pal/login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'dart:async';

const colorizeColors = [
  Colors.deepPurpleAccent,
  Colors.blueGrey,
  Colors.white70
];

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcomescreen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed((context), LoginScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Hero(
              tag: 'logo',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ColorizeAnimatedText('PetPal',
                            textStyle: GoogleFonts.dancingScript(
                                fontSize: 85.0, color: Colors.deepPurple),
                            colors: colorizeColors)
                      ],
                      pause: Duration(seconds: 2),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    color: Colors.white,
                    child: Material(
                      color: Colors.white,
                      child: Image.asset(
                        'images/petlogo.png',
                        height: 95.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Material(
              color: Colors.white,
              child: Text(
                'Unleash happiness - one tap at a time...',
                textAlign: TextAlign.center,
                style: GoogleFonts.dancingScript(
                    fontSize: 26, color: Colors.deepPurple),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
