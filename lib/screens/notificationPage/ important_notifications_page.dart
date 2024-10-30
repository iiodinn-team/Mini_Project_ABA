import 'package:flutter/material.dart';

// Define color constants
const Color primaryColor = Color(0xFF002E44);
const Color secondaryColor = Color(0xFF005B7A);
const Color accentColorAmber = Color(0xFF04B9D4);
const Color accentColorRed = Color(0xFFE3252D);
const Color accentColorGreen = Color(0xFF0CAC2C);
const Color fontPrimaryBlack = Color(0xFF000000);
const Color fontPrimaryWhite = Color(0xFFFFFFFF);
const Color fontPrimaryWhite85 = Color(0xFFFAF9F6);

class ImportantNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
      children: [
        Container(
          width: 100, // Size of the container
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: secondaryColor, // Use the secondaryColor constant
          ),
          child: Center(
            child: Icon(
              Icons.notifications_none,
              color: primaryColor, // Use primaryColor for the icon color
              size: 60,
            ),
          ),
        ),
        SizedBox(height: 16),
        Text(
          "មិនទាន់មានដំណឹង",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200,
            color: fontPrimaryWhite85, // Use fontPrimaryWhite85 for the text color
            fontFamily: 'Kantumruy',
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "អ្នកមិនទាន់មានដំណឹងពាក់ព័ន្ធណាមួយ ដែលបង្ហាញនៅត្រង់នេះ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: fontPrimaryWhite85.withOpacity(0.7), // Use fontPrimaryWhite85 for the text color
              fontFamily: 'Kantumruy',
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
    );
  }
}
