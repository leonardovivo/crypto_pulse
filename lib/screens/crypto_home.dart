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
            ],
          ),
        ),
      ),
    );
  }
}
