import 'package:flutter/material.dart';

import '../configure/configure.dart';

class CustomBankServiceWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;

  const CustomBankServiceWidget({
    super.key,
    required this.title,
    this.backgroundColor = const Color(0xFF000000),
    this.textColor = const Color(0xFFFFFFFF),
    this.icon = Icons.folder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 115,
          width: 115,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    hexToColor('#09727E'),
                    hexToColor('#10CEE4'),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.clamp,
                ).createShader(bounds),
                child: Icon(
                  icon,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
    );
  }
}
