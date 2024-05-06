import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_pal/Bird/cartpage.dart';
import 'Bird/cages.dart';
import 'Bird/decoration.dart';
import 'Bird/food.dart';
import 'Bird/supplements.dart';

class BirdScreen extends StatefulWidget {
  static const id = "bird_screen";
  @override
  State<BirdScreen> createState() => _BirdScreenState();
}

class _BirdScreenState extends State<BirdScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    CagePage(),
    FoodPage(),
    DecorationPage(),
    SupPage(),
    CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Material(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 7.0),
            child: Hero(
              tag: 'logo',
              child: Row(
                children: [
                  Material(
                    color: Colors.white,
                    child: Text(
                      'Birds',
                      style: GoogleFonts.dancingScript(
                          fontSize: 30.0, color: Colors.deepPurple),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      child: Image.asset(
                        'images/petlogo.png',
                      ),
                      height: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              backgroundColor: Colors.white,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.deepPurple,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.shower,
                  text: 'Cages',
                ),
                GButton(
                  icon: FontAwesomeIcons.bowlRice,
                  text: 'Food',
                ),
                GButton(
                  icon: FontAwesomeIcons.tag,
                  text: 'Decor.',
                ),
                GButton(
                  icon: FontAwesomeIcons.pills,
                  text: 'Suppl.',
                ),
                GButton(
                  icon: FontAwesomeIcons.cartShopping,
                  text: 'Cart',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
