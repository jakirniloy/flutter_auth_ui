import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Compunents/account_have_cheack.dart';
import 'package:flutter_auth/Compunents/rounded_button.dart';
import 'package:flutter_auth/Compunents/rounded_passwordfield.dart';
import 'package:flutter_auth/Compunents/rounded_textfield.dart';
import 'package:flutter_auth/Screens/Signup/signup.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.45,
              ),
              RoundedInputField(
                hintText: "Enter your Email :",
                onChanged: (value) {},
              ),

              RoundedPassword(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                color: kPrmaryColor,
                textColor: Colors.white,
                press: () {},
              ),
              SizedBox(height: size.height * 0.05),
              AccountHaveCheck(
                login: true,
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
              )

              // SizedBox(height: size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
