import 'package:flutter/material.dart';
import 'package:pokemon/Pages/login_screens/initial_login.dart';
import 'Pages/initial_screen.dart';
import 'Pages/onboarding/on_boarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
  runApp(MyApp(isFirstTime: isFirstTime));
}

class MyApp extends StatelessWidget {
  final bool isFirstTime;

  const MyApp({super.key, this.isFirstTime = true});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: isFirstTime ? "/onboarding" : "/login",
      routes: {
        "/onboarding": (context) => const OnBoarding(),
        "/login": (context) => InitialLogin(
          onComplete: (){
            _updateFirstTime();
            Navigator.pushReplacementNamed(context, '/initial');
          },
        ),
        "/initial": (context) => const InitialScreen(),
      },
    );
  }

  Future<void> _updateFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
  }
}
