// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../flutter_flow/flutter_flow_widgets.dart';
// import '../login/login_widget.dart';
// import '../register/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hbd/constants.dart';
import 'package:hbd/signup_screen.dart';
import 'testlogin.dart';
import 'testroute.dart';
import 'rounded_button.dart';

void main() {
  runApp(MyApp2());
}
const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'nigger',
      home: SplashScreenWidget(),
    );
  }
}

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key key}) : super(key: key);

  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}
class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final color = kPrimaryColor;
  final textColor = kPrimaryLightColor;





  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Center(

              child: Image.asset(
                "assets/images/花卉背景.png",
                width: size.width * 1,
                height: size.height * 1,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  Image.asset(
                    "assets/images/shengri.png",
                    height: size.width * 0.7,
                  ),
                  SizedBox(height: size.height * 0.05),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: ElevatedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: kPrimaryLightColor),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: TextStyle(
                            color: kPrimaryLightColor, fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: ElevatedButton(
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: kPrimaryLightColor),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                            textStyle: TextStyle(
                                color: kPrimaryLightColor, fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ],
              ),
            ), //这是有用的。
          ],
        ),
      ),
    );
  }
}
//
// class _SplashScreenWidgetState extends State<SplashScreenWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         height: size.height,
//         width: size.width,
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             Center(
//
//               child: Image.asset(
//                 "assets/images/花卉背景.png",
//                 width: size.width * 1,
//                 height: size.height * 1,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               left: 0,
//               child: Image.asset(
//                 "assets/images/main_bottom.png",
//                 width: size.width * 0.2,
//               ),
//             ),
//             SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(height: size.height * 0.05),
//                   Image.asset(
//                     "assets/images/shengri.png",
//                     height: size.width * 0.7,
//                   ),
//                   SizedBox(height: size.height * 0.05),
//                   RoundedButton(
//                     key: scaffoldKey,
//                     text: "LOGIN",
//                     press: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) {
//                       //       return LoginScreen();
//                       //     },
//                       //   ),
//                       // );
//                     },
//                   ),
//                   RoundedButton(
//                     key: scaffoldKey,
//                     text: "SIGN UP",
//                     color: kPrimaryLightColor,
//                     textColor: Colors.black,
//                     press: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) {
//                       //       return SignUpScreen();
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ), //这是有用的。
//           ],
//         ),
//       ),
//     );
//   }
// }
