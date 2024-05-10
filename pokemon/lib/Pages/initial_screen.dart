import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
            ),
            Image.asset("assets/Group28.png"),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Todos os Pokémons em um só Lugar",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(56),
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Continuar", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
