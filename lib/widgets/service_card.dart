import 'package:flutter/material.dart';
import 'package:mini_project_aba/configure/configure.dart';

class ServiceCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const ServiceCard({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            imageUrl,
            height: 60,
            width: 60,
              fit: BoxFit.cover
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 100,
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 16,
              color: fontPrimaryWhite,
            ),
          ),
        )
      ],
    );
  }
}
