import 'package:flutter/material.dart';

import 'custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    Key key,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          key: key,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0,fontFamily: 'BrushPains'),
          ),
          color: color,
          onPressed: onPressed,
        );
}
