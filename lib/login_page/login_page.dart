import 'package:flutter/material.dart';
import 'package:login_design1/login_page/login_page_components.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenWidth * .5,
            alignment: Alignment.center,
            /*
          * Main column that contain the whole left Widgets
          */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * .15,
                ),
                WelcomeBackText(),
                SizedBox(
                  height: screenHeight * .03,
                ),
                Text(
                  "Welcome back! please enter your details.",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(
                  height: screenHeight * .03,
                ),
                EmailAndPassword(),
                SizedBox(
                  height: 15,
                ),
                RememberMeCheckBox(),
                SizedBox(
                  height: screenHeight * .03,
                ),
                SignInButton(),
                SizedBox(
                  height: screenHeight * .03,
                ),
                SignInWithGoogleButton(),
                SizedBox(
                  height: screenHeight * .03,
                ),
                SignInWithTwitterButton(),
                SizedBox(
                  height: screenHeight * .03,
                ),
                DontHaveAnAccountLine(),
              ],
            ),
          ),
          /*
        * Container that will contain the image
        */
          Container(
            width: screenWidth * .5,
            height: screenHeight,
            child: Image(
                image: AssetImage("assets/design.png"), fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
