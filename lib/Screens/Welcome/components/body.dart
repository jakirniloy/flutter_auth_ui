import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Compunents/rounded_button.dart';
import 'package:flutter_auth/Screens/Signup/signup.dart';
import 'package:flutter_auth/Screens/Welcome/Login/login_srceen.dart';
import 'package:flutter_auth/constants.dart';

import 'background.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

//const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              color: kPrmaryColor,
              textColor: Colors.white,
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
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "SIGNUP",
              color: kprimarylightcolor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SIgnup();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
