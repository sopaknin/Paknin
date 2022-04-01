import 'package:flutter/material.dart';
import 'rounded_input_field.dart';
import 'rounded_password_field.dart';
import 'rounded_button.dart';
import 'already_have_an_account_acheck.dart';
import 'or_divider.dart';
import 'social_icon.dart';
import 'testlogin.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:     Container(
        height: size.height,
        width: double.infinity,
        // Here i can use size.width but use double.infinity because both work as a same
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.25,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SIGNUP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Image.asset(
                    "assets/images/蛋糕.png",
                    height: size.height * 0.35,
                  ),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                  ),
                  OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/icons/facebook.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/google-plus.svg",
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // Container(
    //   width: double.infinity,
    //   height: size.height,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: <Widget>[
    //       SingleChildScrollView(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: <Widget>[
    //             Text(
    //               "LOGIN",
    //               style: TextStyle(fontWeight: FontWeight.bold),
    //             ),
    //             SizedBox(height: size.height * 0.03),
    //             Image.asset(
    //               "assets/images/蛋糕.png",
    //               height: size.height * 0.35,
    //             ),
    //             SizedBox(height: size.height * 0.03),
    //             RoundedInputField(
    //               hintText: "Your Email",
    //               onChanged: (value) {},
    //             ),
    //             RoundedPasswordField(
    //               onChanged: (value) {},
    //             ),
    //             RoundedButton(
    //               text: "LOGIN",
    //               press: () {},
    //             ),
    //             SizedBox(height: size.height * 0.03),
    //             AlreadyHaveAnAccountCheck(
    //               press: () {
    //                 // Navigator.push(
    //                 //   context,
    //                 //   MaterialPageRoute(
    //                 //     builder: (context) {
    //                 //       return SignUpScreen();
    //                 //     },
    //                 //   ),
    //                 // );
    //               },
    //             ),
    //           ],
    //         ),
    //       ),
    //       Positioned(
    //         top: 0,
    //         left: 0,
    //         child: Image.asset(
    //           "assets/images/main_top.png",
    //           width: size.width * 0.35,
    //         ),
    //       ),
    //       Positioned(
    //         bottom: 0,
    //         right: 0,
    //         child: Image.asset(
    //           "assets/images/login_bottom.png",
    //           width: size.width * 0.4,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
