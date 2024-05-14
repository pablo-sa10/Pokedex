import 'package:flutter/material.dart';
import 'Pages/cadastro/on_bording.dart';

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
      initialRoute: "home",
      routes: {
        "home": (context)=> const OnBording(),
      },
      // onGenerateRoute: (settings){
      //   if(settings.name == )
      // },
    );
  }
}
