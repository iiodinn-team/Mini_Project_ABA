import 'package:flutter/material.dart';

import '../../configure/configure.dart';

class ImportantNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100, // Size of the container
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white10, // Use the secondaryColor constant
          ),
          child: Center(
            child: Icon(
              Icons.notifications_none,
              color: primaryColor,
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
            color: fontPrimaryWhite85,
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
              color: fontPrimaryWhite85.withOpacity(0.7),
              fontFamily: 'Kantumruy',
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ],
    );
  }
}
