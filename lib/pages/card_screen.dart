import 'package:flutter/material.dart';

import '../screens/homePage/home.dart';

void main() {
  runApp(const CardScreen());
}

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Card Screen",
      debugShowCheckedModeBanner: false,
      home: PamentHomePage(),
    );
  }
}

final List<Map<String, dynamic>> items = [
  {
    "image": Image.network(
      'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Mobile_Legends_5v5_Logo_Fair_MOBA_for_Mobile.JPG/revision/latest?cb=20200819062413',
      fit: BoxFit.cover, // Ensure the image fills the circle
      width: 40.0, // Match the container size
      height: 40.0,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red); // Fallback icon on error
      },
    ),
    "title": "Mobile Legend: Bang Bang",
    "subtitle": "Debit Card",
  },
  {
    "image": Image.network(
      'https://www.paisabazaar.com/wp-content/uploads/2022/10/Featured-Image-11-768x511.jpg',
      fit: BoxFit.cover, // Ensure the image fills the circle
      width: 40.0, // Match the container size
      height: 40.0,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red); // Fallback icon on error
      },
    ),
    "title": "Debit Card",
    "subtitle": "order your ABA debit card easily and choose your receiving option  between delivery, pick up at branch or instantly at kiosk. ",
  },
  {
    "image": Image.network(
      'https://www.adcb.com/en/Images/1250x560-conventional_tcm41-528838.png',
      fit: BoxFit.cover, // Ensure the image fills the circle
      width: 40.0, // Match the container size
      height: 40.0,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, color: Colors.red); // Fallback icon on error
      },
    ),
    "title": "Virtual Debit Card",
    "subtitle": "Create virtual Visa, Mastercard or UnionPay International card instantly for free and start making payments in stores and online.",
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
              'Cards',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'KantumruyPro',
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white24,
              child: Icon(
                Icons.local_atm_rounded,
                size: 60,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'New Card',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'KantumruyPro',
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                color: const Color(0xFF091015),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Special Edition Debit Cards',
                        style: TextStyle(color: Colors.white70, fontSize: 22, fontFamily: 'KantumruyPro'),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: const Color(0xFF101D26),
                                margin: const EdgeInsets.symmetric(vertical: 4.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                                  child: ListTile(
                                    leading: item["image"] != null
                                        ? Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.white24,
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipOval(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: item["image"],
                                        ),
                                      ),
                                    )
                                        : Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.white24,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    title: Text(
                                      item["title"],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'KantumruyPro',
                                      ),
                                    ),
                                    subtitle: Text(
                                      item["subtitle"],
                                      style: const TextStyle(color: Colors.white70, fontSize: 14, fontFamily: 'KantumruyPro'),
                                    ),
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
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF002E44),
    );
  }
}
