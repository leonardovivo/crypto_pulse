import 'package:crypto_pulse/screens/crypto_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoPulse());
}

class CryptoPulse extends StatelessWidget {
  const CryptoPulse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Pulse',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 255, 195)),
        useMaterial3: true,
      ),
      home: const CryptoPulseHome(),
    );
  }
}