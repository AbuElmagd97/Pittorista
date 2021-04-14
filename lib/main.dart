import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pittorista/landing_screen.dart';
import 'package:pittorista/screens/gallery_screen.dart';
import 'package:pittorista/screens/home_screen.dart';
import 'package:pittorista/screens/profile_screen.dart';
import 'package:pittorista/screens/splash_screen.dart';
import 'package:pittorista/services/auth.dart';
import 'package:provider/provider.dart';
import 'screens/artboard_details_screen.dart';
import 'screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          LandingScreen.routeName: (context) => LandingScreen(),
          LoginScreen.routeName: (context) => LoginScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          GalleryScreen.routeName: (context) => GalleryScreen(),
          ArtBoardDetails.routeName: (context) => ArtBoardDetails(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
        },
      ),
    );
  }
}
