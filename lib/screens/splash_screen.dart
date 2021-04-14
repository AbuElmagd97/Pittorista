import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pittorista/constants/constant.dart';
import 'package:pittorista/screens/login_screen.dart';
import '../landing_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      getData();
    });
  }

  Future<void> getData() async {
    //TODO: get user data from firebase
    Navigator.pushNamed(context, LandingScreen.routeName);

  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/logo.png'),
          ),
          Container(
            height: height*0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pittorista',
                  // textAlign: TextAlign.center,
                  style: textStyle2.copyWith(color: color5),
                ),
                Text(
                  'Unleash the art',
                  // textAlign: TextAlign.center,
                  style: textStyle1.copyWith(color: color5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
