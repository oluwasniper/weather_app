import 'package:flutter/material.dart';

class SplashLogoWidget extends StatelessWidget {
  const SplashLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.width * 0.5;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: iconSize,
            right: (iconSize / 0.5) * 0.2,
            left: (iconSize / 0.5) * 0.2,
          ),
          child: Image.asset(
            'assets/images/logo1.jpg',
            width: iconSize,
            height: iconSize,
          ),
        ),
      ],
    );
  }
}
