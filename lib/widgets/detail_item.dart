import 'package:crypto_pulse/widgets/color.dart';
import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  final String title;
  final String value;

  const DetailItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: CyberYellow.cyberpunkYellow,
              fontFamily: 'Voltec',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.blueAccent,
                  blurRadius: 10,
                  offset: Offset(1, 6),
                ),
              ],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.greenAccent,
              fontFamily: 'Voltec',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
