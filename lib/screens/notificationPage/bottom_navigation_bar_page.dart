import 'package:flutter/material.dart';
import ' important_notifications_page.dart';
import '../../configure/configure.dart';
import 'transactions_page.dart';
import 'personal_settings_page.dart';


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
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "ABA សារជូនដំណឹង",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: fontPrimaryWhite85,
              fontFamily: 'Kantumruy',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: secondaryColor,
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
                              ? accentColorAmber
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _tabs[index],
                          style: TextStyle(
                            color: _selectedIndex == index
                                ? fontPrimaryWhite
                                : fontPrimaryWhite85,
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
