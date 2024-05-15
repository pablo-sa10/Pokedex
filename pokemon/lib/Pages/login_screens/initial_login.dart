import 'package:flutter/material.dart';

class InitialLogin extends StatefulWidget {
  const InitialLogin({super.key});

  @override
  State<InitialLogin> createState() => _InitialLoginState();
}

class _InitialLoginState extends State<InitialLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Container(),
        ),
        actions: [
          const Text(
            "Pular",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 120, bottom: 20, right: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Group30.png"),
            const SizedBox(height: 20),
            const Text(
              "Está pronto para essa aventura?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Basta criar uma conta e começar a explorar o mundo dos Pokémon hoje!",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56),
                  color: Colors.indigo),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Criar conta",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56),
                  color: Colors.white),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Já tenho uma conta",
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
