import 'package:flutter/material.dart';
import 'package:pet_pal/birdmain.dart';
import 'package:pet_pal/catmain.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_pal/dogmain.dart';
import 'package:pet_pal/fishmain.dart';

class MainScreen extends StatefulWidget {
  static const id = 'mainscreen';
  @override
  State<MainScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/download.png',
                ),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 155.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/dog.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Center(
                          child: Text(
                            'Dog',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, DogScreen.id);
                    },
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  TextButton(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 155.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/cat.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Center(
                          child: Text(
                            'Cat',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, CatScreen.id);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 150.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/fish.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Center(
                          child: Text(
                            'Fish',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, FishScreen.id);
                    },
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  TextButton(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 150.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/bird.png'),
                              fit: BoxFit.fill),
                        ),
                        child: Center(
                          child: Text(
                            'Bird',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, BirdScreen.id);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
