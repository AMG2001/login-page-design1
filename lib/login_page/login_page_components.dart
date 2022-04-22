import 'package:flutter/material.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email"),
        SizedBox(
          height: screenHeight * .01,
        ),
        Container(
          width: screenWidth * .25,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16))),
          ),
        ),
        SizedBox(
          height: screenHeight * .03,
        ),
        Text("Password"),
        SizedBox(
          height: screenHeight * .01,
        ),
        Container(
          width: screenWidth * .25,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter your password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16))),
          ),
        ),
      ],
    );
  }
}

class WelcomeBackText extends StatelessWidget {
  const WelcomeBackText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Welcome ",
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
        ),
        Text(
          "back",
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}

class RememberMeCheckBox extends StatelessWidget {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * .5,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StatefulBuilder(builder: (context, StateSetter setState) {
            return Row(
              children: [
                Checkbox(
                    value: checked,
                    onChanged: (value) {
                      setState(() {
                        checked = value!;
                        print("check = $checked");
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                Text("Remember for 30 days"),
              ],
            );
          }),
          SizedBox(
            width: screenWidth * .05,
          ),
          GestureDetector(
            child: Text(
              "Forgot password",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return OutlinedButton(
      onPressed: () {},
      child: Container(
          alignment: Alignment.center,
          height: 40,
          width: screenWidth * .23,
          child: Text(
            'Sign in',
            style: TextStyle(color: Colors.white),
          )),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return OutlinedButton(
      onPressed: () {},
      child: Container(
          alignment: Alignment.center,
          height: 40,
          width: screenWidth * .23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage('assets/googleIcon.png')),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sign in with ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Google",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          )),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class SignInWithTwitterButton extends StatelessWidget {
  const SignInWithTwitterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return OutlinedButton(
      onPressed: () {},
      child: Container(
          alignment: Alignment.center,
          height: 40,
          width: screenWidth * .23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage('assets/twitterIcon.png')),
              SizedBox(
                width: 10,
              ),
              Text(
                "Sign in with ",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Twitter",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          )),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class DontHaveAnAccountLine extends StatelessWidget {
  const DontHaveAnAccountLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? "),
        Stack(
          children: [
            GestureDetector(
              child: Text(
                "Sign up for free",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        )
      ],
    );
  }
}
