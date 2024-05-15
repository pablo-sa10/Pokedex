import 'package:flutter/material.dart';
import 'package:pokemon/Pages/login_screens/initial_login.dart';
import 'Pages/onboarding/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/onboarding",
      routes: {
        "/onboarding": (context)=> const OnBoarding(),
        "/login": (context)=> const InitialLogin()
      },
      // onGenerateRoute: (settings){
      //   if(settings.name == )
      // },
    );
  }
}
