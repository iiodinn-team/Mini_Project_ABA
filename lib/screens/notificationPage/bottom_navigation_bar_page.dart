import 'package:flutter/material.dart';
import ' important_notifications_page.dart';
import 'transactions_page.dart';
import 'personal_settings_page.dart';

// Color constants
const Color primaryColor = Color(0xFF002E44);
const Color secondaryColor = Color(0xFF005B7A);
const Color accentColorAmber = Color(0xFF04B9D4);
const Color accentColorRed = Color(0xFFE3252D);
const Color accentColorGreen = Color(0xFF0CAC2C);
const Color fontPrimaryBlack = Color(0xFF000000);
const Color fontPrimaryWhite = Color(0xFFFFFFFF);
const Color fontPrimaryWhite85 = Color(0xFFFAF9F6);

class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ImportantNotificationsPage(),
    TransactionsPage(),
    PersonalSettingsPage(),
  ];

  final List<String> _tabs = ["ដំណឹងសំខាន់", "ប្រតិបត្តិការ", "សេចក្តីប្រកាស"];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor, // Use primaryColor constant
      appBar: AppBar(
        backgroundColor: primaryColor, // Use primaryColor constant
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "ABA សារជូនដំណឹង",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: fontPrimaryWhite85, // Use fontPrimaryWhite85 for text color
              fontFamily: 'Kantumruy',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16), // Space between AppBar and navigation bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11), // Outer padding for the entire tab bar
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Corner radius for the navigation bar
              child: Container(
                color: secondaryColor, // Use secondaryColor constant
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_tabs.length, (index) {
                    return GestureDetector(
                      onTap: () => _onItemTapped(index),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? accentColorAmber // Use accentColorAmber for selected tab
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _tabs[index],
                          style: TextStyle(
                            color: _selectedIndex == index
                                ? fontPrimaryWhite // Use fontPrimaryWhite for selected tab text
                                : fontPrimaryWhite85, // Use fontPrimaryWhite85 for unselected tab text
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Kantumruy',
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: _pages[_selectedIndex],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
