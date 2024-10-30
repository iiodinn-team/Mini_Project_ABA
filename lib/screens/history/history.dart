import 'package:flutter/material.dart';

import '../homePage/home.dart';

// void main() {
//   runApp(const HistoryPage());
// }

const Color accentColorRed = Color(0xFFE3252D);

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "History",
      debugShowCheckedModeBanner: false,
      home: GovernmentHomePage(),
    );
  }
}

final List<Map<String, dynamic>> items = [
  {
    "icon": Icons.account_circle,
    "title": "OOH SUSU",
  },
  {
    "icon": Icons.account_circle,
    "title": "OOH TENTEN",
  },
];

class GovernmentHomePage extends StatelessWidget {
  const GovernmentHomePage({super.key});

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
                fontFamily: 'Kantumruy',
              ),
            ),
            SizedBox(width: 10),
            Text(
              'មើលប្រវត្តិ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Kantumruy',
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Transform.rotate(
              angle: 1.5708,
              child: const Icon(
                Icons.keyboard_control_outlined,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  // flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    // height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Savings",
                          style: TextStyle(color: Colors.white , fontSize: 18,fontFamily: 'Kantumruy',),
                        ),
                        const SizedBox(height: 12),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "006 765 789",
                                style: TextStyle(color: Colors.white , fontSize: 18,fontFamily: 'Kantumruy',),
                              ),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 12),
                                  width: 1,
                                  height: 24,
                                  color: Colors.white,
                                ),
                              ),
                              const TextSpan(text: "Savings", style: TextStyle(fontSize: 16,fontFamily: 'Kantumruy',)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: const Column(
                children: [
                  Text('សមតុល្យសាច់ប្រាក់' , style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Kantumruy',)),
                  SizedBox(height: 10),
                  Text('99999.99 USD' , style: TextStyle(color: Colors.white,fontFamily: 'Kantumruy',)),
                  SizedBox(height: 10),
                  Text('សមតុល្យគណនី៖ 99999.99 USD', style: TextStyle(color: Colors.grey,fontFamily: 'Kantumruy',)),
                  SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                color: const Color(0xFF091015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      child: Text(
                        "ថ្ងៃនេះ",
                        style: TextStyle(color: Colors.grey, fontSize: 18,fontFamily: 'Kantumruy',),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return Card(
                            color: const Color(0xFF101D26),
                            child: ListTile(
                              leading: Icon(
                                item["icon"],
                                color: Colors.white,
                                size: 32,
                              ),
                              title: Text(
                                item["title"],
                                style: const TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'KantumruyPro'),
                              ),
                              trailing: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "-1.99",
                                      style: TextStyle(color: accentColorRed),
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(width: 5),
                                    ),
                                    TextSpan(
                                      text: "USD",
                                      style: TextStyle(color: accentColorRed),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0xFF091015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 14,right: 14,bottom: 14),
                      child: Text(
                        "ម្សិលមិញ",
                        style: TextStyle(color: Colors.grey, fontSize: 18,fontFamily: 'Kantumruy',),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return Card(
                            color: const Color(0xFF101D26),
                            child: ListTile(
                              leading: Icon(
                                item["icon"],
                                color: Colors.white,
                                size: 32,
                              ),
                              title: Text(
                                item["title"],
                                style: const TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'KantumruyPro'),
                              ),
                              trailing: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "-1.99",
                                      style: TextStyle(color: accentColorRed,fontFamily: 'Kantumruy',),
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(width: 5),
                                    ),
                                    TextSpan(
                                      text: "USD",
                                      style: TextStyle(color: accentColorRed,fontFamily: 'Kantumruy',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
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
