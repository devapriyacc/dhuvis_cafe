import 'package:flutter/material.dart';
import 'screens/ratio_screen.dart';

void main() {
  runApp(const DhuvisCafe());
}

class DhuvisCafe extends StatelessWidget {
  const DhuvisCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dhuvis Cafe",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ===== APP BAR WITH LOGO =====
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 32,
            ),
            const SizedBox(width: 10),
            const Text("Dhuvis Cafe"),
          ],
        ),
      ),

      // ===== MAIN SCREEN =====
      body: const RatioScreen(),
    );
  }
}
