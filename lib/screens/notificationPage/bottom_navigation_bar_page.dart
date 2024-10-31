import 'package:flutter/material.dart';
import ' important_notifications_page.dart';
import '../../configure/configure.dart';
import '../homePage/home.dart';
import 'transactions_page.dart';
import 'personal_settings_page.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "History",
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarPageHome(),
    );
  }
}

class BottomNavigationBarPageHome extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPageHome> {
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        titleSpacing: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ABA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'Kantumruy',
              ),
            ),
            SizedBox(width: 10),
            Text(
              'សារជូនដំណឹង',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Kantumruy',
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
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
