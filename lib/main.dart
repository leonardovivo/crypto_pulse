import 'package:crypto_pulse/screens/crypto_home.dart';
import 'package:crypto_pulse/widgets/color.dart';
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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: CyberYellow.cyberpunkYellow),
        useMaterial3: true,
      ),
      home: const CryptoPulseHome(),
    );
  }
}