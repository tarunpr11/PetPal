import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Cat/grooming.dart';
import 'Cat/food.dart';
import 'Cat/accessories.dart';
import 'Cat/supplements.dart';
import 'Cat/cartpage.dart';

class CatScreen extends StatefulWidget {
  static const id = "cat_screen";
  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    GroomingPage(),
    FoodPage(),
    AccPage(),
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
                      'Cats',
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
                  text: 'Groom',
                ),
                GButton(
                  icon: FontAwesomeIcons.bowlRice,
                  text: 'Food',
                ),
                GButton(
                  icon: FontAwesomeIcons.tag,
                  text: 'Acc.',
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
