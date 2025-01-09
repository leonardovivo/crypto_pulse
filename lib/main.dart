import 'package:crypto_pulse/screens/binance_screen.dart';
import 'package:crypto_pulse/screens/bitcoin_screen.dart';
import 'package:crypto_pulse/screens/cardano_screen.dart';
import 'package:crypto_pulse/screens/crypto_home.dart';
import 'package:crypto_pulse/screens/dogecoin_screen.dart';
import 'package:crypto_pulse/screens/ethereum_screen.dart';
import 'package:crypto_pulse/screens/solana_screen.dart';
import 'package:crypto_pulse/screens/tether_screen.dart';
import 'package:crypto_pulse/screens/usd_screen.dart';
import 'package:crypto_pulse/screens/xrp_screen.dart';
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
      routes: {
          '/bitcoin': (context) => BitcoinScreen(),
          '/ethereum': (context) => EthereumScreen(),
          '/xrp': (context) => XrpScreen(),
          '/dogecoin': (context) => DogecoinScreen(),
          '/tether': (context) => TetherScreen(),
          '/cardano': (context) => CardanoScreen(),
          '/usd': (context) => UsdScreen(),
          '/solana': (context) => SolanaScreen(),
          '/binance': (context) => BinanceScreen(),
        },
    );
  }
}