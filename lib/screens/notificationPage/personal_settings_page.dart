import 'package:flutter/material.dart';

// Color constants
const Color primaryColor = Color(0xFF002E44);
const Color secondaryColor = Color(0xFF005B7A);
const Color accentColorAmber = Color(0xFF04B9D4);
const Color accentColorRed = Color(0xFFE3252D);
const Color accentColorGreen = Color(0xFF0CAC2C);
const Color fontPrimaryBlack = Color(0xFF000000);
const Color fontPrimaryWhite = Color(0xFFFFFFFF);
const Color fontPrimaryWhite85 = Color(0xFFFAF9F6);

class PersonalSettingsPage extends StatelessWidget {
  // Grouped notifications by date
  final Map<String, List<Map<String, String>>> groupedNotifications = {
    'ថ្ងៃនេះ': [
      {
        "title": "ជំនួយសម្រាប់ប្រតិបត្តិការ",
        "description": "កុំភ្លេចណា- ឥតគិតថ្លៃ សម្រាប់ការដាក់ប្រាក់ចូលគណនី...",
        "imagePath": 'assets/image/img1.jpg',
      },
    ],
    '12 កក្កដា 2024': [
      {
        "title": "សេវាប្លង់ថ្មី",
        "description": "អាចឲ្យអ្នកបិទ-បើកមុខងារទូទាត់កាន់តែប្រសើរ...",
        "imagePath": 'assets/image/img2.jpg',
      },
    ],
    '9 កក្កដា 2024': [
      {
        "title": "ក្របខ័ណ្ឌថ្មី",
        "description": "ចាប់ផ្តើមអភិវឌ្ឍន៍...",
        "imagePath": 'assets/image/img3.jpg',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor, // Use primaryColor constant
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: groupedNotifications.entries.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date header
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    entry.key,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: fontPrimaryWhite85, // Use fontPrimaryWhite85 for text color
                      fontFamily: 'Kantumruy',
                    ),
                  ),
                ),
                // Notification card for the date
                ...entry.value.map((notification) => _buildNotificationCard(notification)).toList(),
                const SizedBox(height: 16),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildNotificationCard(Map<String, String> notification) {
    return Card(
      color: secondaryColor, // Use secondaryColor constant
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Background image
            Image.asset(
              notification["imagePath"]!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
            // Overlay to darken image
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.black.withOpacity(0.5),
            ),
            // Text overlay positioned at the bottom
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification["title"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: fontPrimaryWhite, // Use fontPrimaryWhite for title text color
                      fontFamily: 'Kantumruy',
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    notification["description"]!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: fontPrimaryWhite, // Use fontPrimaryWhite for description text color
                      fontFamily: 'Kantumruy',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
