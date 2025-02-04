import 'package:crypto_pulse/animations/transition_animation_to.dart';
import 'package:crypto_pulse/screens/binance_screen.dart';
import 'package:crypto_pulse/screens/bitcoin_screen.dart';
import 'package:crypto_pulse/screens/cardano_screen.dart';
import 'package:crypto_pulse/screens/dogecoin_screen.dart';
import 'package:crypto_pulse/screens/ethereum_screen.dart';
import 'package:crypto_pulse/screens/solana_screen.dart';
import 'package:crypto_pulse/screens/tether_screen.dart';
import 'package:crypto_pulse/screens/usd_screen.dart';
import 'package:crypto_pulse/screens/xrp_screen.dart';
import 'package:crypto_pulse/widgets/clickable_image.dart';
import 'package:crypto_pulse/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CryptoPulseHome extends StatelessWidget {
  const CryptoPulseHome({super.key});

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).push(TransitionAnimationTo(page: screen));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fundo_home.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 100,
                left: 120,
                child: Text(
                  'Choose your',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 100,
                child: Text(
                  'Crypto',
                  style: TextStyle(
                    color: CyberYellow.cyberpunkYellow,
                    fontFamily: 'Rovelink',
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    shadows: [
                      Shadow(
                        color: Colors.blueAccent,
                        blurRadius: 10,
                        offset: Offset(6, 5),
                      ),
                    ],
                  ),
                )
                    .animate(
                      onPlay: (controller) => controller.repeat(),
                    )
                    .shimmer(
                      duration: 2000.ms,
                      color: CyberYellow.cyberpunkYellow,
                    ),
              ),
              Positioned.fill(
                top: 300,
                child: Center(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    padding: const EdgeInsets.all(20),
                    children: [
                      ClickableImage(
                        imagePath: 'assets/images/bitcoin.png',
                        onTap: () => _navigateTo(context, BitcoinScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/ethereum.png',
                        onTap: () => _navigateTo(context, EthereumScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/xrp.png',
                        onTap: () => _navigateTo(context, XrpScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/dogecoin.png',
                        onTap: () => _navigateTo(context, DogecoinScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/tether.png',
                        onTap: () => _navigateTo(context, TetherScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/cardano.png',
                        onTap: () => _navigateTo(context, CardanoScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/usd.png',
                        onTap: () => _navigateTo(context, UsdScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/solana.png',
                        onTap: () => _navigateTo(context, SolanaScreen()),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/binance.png',
                        onTap: () => _navigateTo(context, BinanceScreen()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
