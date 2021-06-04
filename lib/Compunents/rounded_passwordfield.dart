import 'package:flutter/material.dart';
import 'package:flutter_auth/Compunents/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassword({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrmaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrmaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrmaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
