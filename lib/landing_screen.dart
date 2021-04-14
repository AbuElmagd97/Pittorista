import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pittorista/screens/home_screen.dart';
import 'package:pittorista/screens/login_screen.dart';
import 'package:pittorista/services/auth.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatelessWidget {
  static const String routeName = '/LandingScreen';

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          if (user == null) {
            return LoginScreen();
          }
          return HomeScreen();
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
