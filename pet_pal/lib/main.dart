import 'package:flutter/material.dart';
import 'package:pet_pal/logo.dart';
import 'package:pet_pal/welcome_screen.dart';
import 'package:pet_pal/login_screen.dart';
import 'package:pet_pal/mainscreen.dart';
import 'package:pet_pal/dogmain.dart';
import 'package:pet_pal/catmain.dart';
import 'package:pet_pal/fishmain.dart';
import 'package:pet_pal/birdmain.dart';
import 'package:pet_pal/cart.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: PetPal(),
  ));
}

class PetPal extends StatelessWidget {
  const PetPal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OpenLogo.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        OpenLogo.id: (context) => OpenLogo(),
        LoginScreen.id: (context) => LoginScreen(),
        MainScreen.id: (context) => MainScreen(),
        DogScreen.id: (context) => DogScreen(),
        CatScreen.id: (context) => CatScreen(),
        FishScreen.id: (context) => FishScreen(),
        BirdScreen.id: (context) => BirdScreen()
      },
    );
  }
}
