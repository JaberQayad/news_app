// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'screens/on_boarding.dart';
import 'screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utilities/app_theme.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = OnBoarding();
  } else {
    _screen = HomeScreen();
  }

  runApp(NewsApp(_screen));
}

class NewsApp extends StatelessWidget {
  final Widget _screen;

  const NewsApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: this._screen,
    );
  }
}
