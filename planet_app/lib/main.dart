import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planet_app/root/app_root.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool? isLogin = sharedPreferences.getBool("isLogin");

  runApp(AppRoot(
    isLogin: isLogin ?? false,
  ));
}
