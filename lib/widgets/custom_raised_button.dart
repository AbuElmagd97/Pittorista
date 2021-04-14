import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    Key key,
    this.child,
    this.color,
    this.borderRadius: 2.0,
    this.height: 50.0,
    this.width: 50.0,
    this.onPressed,
  }) : assert(borderRadius != null), super(key: key);
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final double width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        disabledColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}