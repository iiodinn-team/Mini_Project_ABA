import 'package:flutter/material.dart';

import '../screens/homePage/home.dart';

void main() {
  runApp(const ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Profile Screen",
      debugShowCheckedModeBanner: false,
      home: PamentHomePage(),
    );
  }
}

final List<Map<String, dynamic>> items = [
  {
    "icon": Icons.account_circle,
    "title": "ជ្រើសរើសគំរូទូទាត់ប្រចាំ",
  },
  {
    "icon": Icons.security_rounded,
    "title": "សុវត្ថិភាព",
  },
  {
    "icon": Icons.language_rounded,
    "title": "ភាសា",
  },
  {
    "icon": Icons.add_call,
    "title": "ទាក់ទងមកយើងខ្ញុំ",
  },
  {
    "icon": Icons.text_snippet_rounded,
    "title": "លក្ខខណ្ឌ",
  },
  // Add more items as needed
];

class PamentHomePage extends StatelessWidget {
  const PamentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF002E44),
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
                fontFamily: 'KantumruyPro',
              ),
            ),
            SizedBox(width: 10),
            Text(
              'ការកំណត់ផ្សេងៗ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w200,
                fontFamily: 'KantumruyPro',
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,30,0,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/4kjW5ZzvqS0qt207RCG8mCmKei_spnyX5Ctt0GJrECwVXqafdWetYioQrkAAFPLOd_I=w526-h296-rw'), // Replace with actual image URL or asset
            ),
            const SizedBox(height: 16),
            const Text(
              'ទេវី, Tevy!',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'KantumruyPro',
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'លេខសម្គាល់: 08933451',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
                fontFamily: 'KantumruyPro',
              ),
            ),
            SizedBox.fromSize(size: const Size.fromHeight(28)),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                color: const Color(0xFF091015),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust the padding as needed
                            child: Card(
                              color: const Color(0xFF101D26),
                              margin: const EdgeInsets.symmetric(vertical: 4.0), // Adjust the margin as needed
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 6.0), // Adjust the padding inside the card as needed
                                child: ListTile(
                                  leading: Icon(
                                    item["icon"], // Use the icon from the list
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  title: Text(
                                    item["title"], // Use the title from the list
                                    style: const TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'KantumruyPro',fontWeight: FontWeight.w100),
                                  ),
                                  trailing: const Icon(
                                    Icons.navigate_next_rounded, // Use a different icon
                                    color: Colors.white70,
                                    size: 28,
                                  ),
                                )
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Text(
                      'កម្មវិធីកំណែ: v5.20.500.24', // Replace with your actual text
                      style: TextStyle(color: Colors.white70, fontSize: 14, fontFamily: 'KantumruyPro'),
                    ),
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF002E44),
    );
  }
}