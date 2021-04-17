import 'package:flutter/material.dart';
import 'package:pittorista/constants/constant.dart';
import 'package:pittorista/services/auth.dart';
import 'package:pittorista/widgets/sign_in_button.dart';
import 'package:pittorista/widgets/social_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "/LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.25,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),
                Text(
                  'Pittorista',
                  textAlign: TextAlign.center,
                  style: textStyle2.copyWith(color: color5, fontSize: 32.0),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SocialSignInButton(
                  assetName: 'assets/images/google-logo.png',
                  text: 'Sign in with Google',
                  textColor: Colors.black87,
                  color: Colors.white,
                  onPressed: auth.signInWithGoogle,
                ),
                SizedBox(height: 8.0),
                SocialSignInButton(
                  assetName: 'assets/images/facebook-logo.png',
                  text: 'Sign in with Facebook',
                  textColor: Colors.white,
                  color: Color(0xFF334D92),
                  onPressed: () {},
                ),
                SizedBox(height: 8.0),
                SignInButton(
                  text: 'Sign in with email',
                  textColor: Colors.white,
                  color: color4,
                  onPressed: () {},
                ),
                SizedBox(height: 8.0),
                Text(
                  'or',
                  style: TextStyle(fontSize: 14.0, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.0),
                SignInButton(
                  text: 'Go anonymous',
                  textColor: Colors.black,
                  color: color1,
                  onPressed: auth.signInAnonymously,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
