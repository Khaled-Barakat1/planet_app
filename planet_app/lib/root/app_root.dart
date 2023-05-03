import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import '../screens/sign_in_screens/login_screen.dart';
import 'main_layout.dart';

class AppRoot extends StatelessWidget {
  AppRoot({super.key, required this.isLogin});
  bool isLogin;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splashIconSize: double.infinity,
          splash: const Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/splash.png'),
          ),
          nextScreen: isLogin ? const MainLayout() : const LogInPage()),
    );
  }
}
