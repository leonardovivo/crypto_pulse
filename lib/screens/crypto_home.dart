import 'package:crypto_pulse/widgets/clickable_image.dart';
import 'package:crypto_pulse/widgets/color.dart';
import 'package:flutter/material.dart';

class CryptoPulseHome extends StatelessWidget {
  const CryptoPulseHome({super.key});

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
                        onTap: () =>
                            Navigator.of(context).pushNamed('/bitcoin'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/ethereum.png',
                        onTap: () =>
                            Navigator.of(context).pushNamed('/ethereum'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/xrp.png',
                        onTap: () => Navigator.of(context).pushNamed('/xrp'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/dogecoin.png',
                        onTap: () =>
                            Navigator.of(context).pushNamed('/dogecoin'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/tether.png',
                        onTap: () => Navigator.of(context).pushNamed('/tether'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/cardano.png',
                        onTap: () =>
                            Navigator.of(context).pushNamed('/cardano'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/usd.png',
                        onTap: () => Navigator.of(context).pushNamed('/usd'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/solana.png',
                        onTap: () => Navigator.of(context).pushNamed('/solana'),
                      ),
                      ClickableImage(
                        imagePath: 'assets/images/binance.png',
                        onTap: () =>
                            Navigator.of(context).pushNamed('/binance'),
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
