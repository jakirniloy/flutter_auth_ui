import 'package:flutter/material.dart';
import 'package:flutter_auth/Compunents/account_have_cheack.dart';
import 'package:flutter_auth/Compunents/rounded_button.dart';
import 'package:flutter_auth/Compunents/rounded_passwordfield.dart';
import 'package:flutter_auth/Compunents/rounded_textfield.dart';
import 'package:flutter_auth/Screens/Signup/Compunents/background.dart';
import 'package:flutter_auth/Screens/Signup/Compunents/orDriver.dart';
import 'package:flutter_auth/Screens/Signup/Compunents/social_icon.dart';
import 'package:flutter_auth/Screens/Signup/signup.dart';
import 'package:flutter_auth/Screens/Welcome/Login/login_srceen.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class body extends StatelessWidget {
  const body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: 'Enter Your E-mail',
                onChanged: (value) {},
              ),
              RoundedPassword(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Signup",
                color: kPrmaryColor,
                textColor: Colors.white,
                press: () {},
              ),
              SizedBox(height: size.height * 0.05),
              AccountHaveCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
              ),
              OrDriver(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
      ),
    );
  }
}
