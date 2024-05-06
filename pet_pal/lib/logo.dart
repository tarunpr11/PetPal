import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:pet_pal/welcome_screen.dart';

class OpenLogo extends StatefulWidget {
  static const id = 'openlogo';
  @override
  State<OpenLogo> createState() => _OpenLogoState();
}

class _OpenLogoState extends State<OpenLogo>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;
  double animationValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed((context), WelcomeScreen.id);
    });
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    controller.forward();
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reverse();
      } else if (controller.isDismissed) {
        controller.forward();
      }
      setState(() {
        animationValue = animation.value;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SpinKitPumpingHeart(
          color: Colors.deepPurpleAccent,
          size: 170.0,
        ));
  }
}
