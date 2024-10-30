import 'package:flutter/material.dart';

class CustomBankService extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final double borderRadius;
  final VoidCallback? onTap;

  const CustomBankService({
    super.key,
    required this.icon,
    required this.text,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.bold,
    this.padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    this.borderRadius = 30.0,
    this.onTap,
  });

  Color hexToColor(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('0xFF$hexCode'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0, -3),
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    hexToColor("#09727E"),
                    hexToColor("#10CEE4"),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: Icon(
                  icon,
                  size: 26.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
