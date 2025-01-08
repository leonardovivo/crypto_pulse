import 'package:flutter/material.dart';

class ClickableImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const ClickableImage({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
