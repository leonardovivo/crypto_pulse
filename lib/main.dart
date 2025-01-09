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
          '/bitcoin': (context) => const BitcoinScreen(),
          '/ethereum': (context) => const EthereumScreen(),
          '/xrp': (context) => const XrpScreen(),
          '/dogecoin': (context) => const DogecoinScreen(),
          '/tether': (context) => const TetherScreen(),
          '/cardano': (context) => const CardanoScreen(),
          '/usd': (context) => const UsdScreen(),
          '/solana': (context) => const SolanaScreen(),
          '/binance': (context) => const BinanceScreen(),
        },
    );
  }
}