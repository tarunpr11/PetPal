import 'package:flutter/material.dart';
// import 'package:thelawalign/home_page.dart';
import 'package:pet_pal/mainscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
// import 'package:thelawalign/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'loginscreen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkVal = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                        'PetPal',
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.white,
                    child: Text(
                      'Welcome Pet Lover!',
                      style: GoogleFonts.signikaNegative(
                          color: Colors.deepPurple, fontSize: 35.0),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.0),
                    child: Material(
                      color: Colors.white,
                      child: TextField(
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Email/Username',
                            prefixIcon: Icon(Icons.email)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.0),
                    child: Material(
                      color: Colors.white,
                      child: TextField(
                        obscureText: true,
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Password', prefixIcon: Icon(Icons.lock)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            activeColor: Colors.deepPurple,
                            value: checkVal,
                            onChanged: (value) {
                              setState(() {
                                checkVal = !checkVal;
                              });
                            },
                          ),
                        ),
                        Text('Remember Me'),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(color: Colors.deepPurple),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      // minWidth: 300.0,
                      minWidth: MediaQuery.of(context).size.width - 25,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 19.0),
                      child: Material(
                        elevation: 5.0,
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(15.0),
                        child: MaterialButton(
                          minWidth: 200.0,
                          height: 62.0,
                          onPressed: () {
                            Navigator.pushNamed(context, MainScreen.id);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      // minWidth: 300.0,
                      minWidth: MediaQuery.of(context).size.width - 25,
                    ),
                    child: Material(
                      elevation: 5.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      child: MaterialButton(
                        minWidth: 200.0,
                        height: 62.0,
                        onPressed: () {
                          // Navigator.pushNamed(context, MainScreen.id);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/search.png',
                              height: 20.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Login with Google',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account? '),
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, RegisterScreen.id);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.deepPurple),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
