import 'package:flutter/material.dart';

import '../screens/homePage/home.dart';

void main() {
  runApp(const PaymentScreen());
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Payment Service",
      debugShowCheckedModeBanner: false,
      home: PamentHomePage(),
    );
  }
}

final List<Map<String, dynamic>> items = [
  {
    "icon": Icons.payment,
    "title": "ជ្រើសរើសគំរូទូទាត់ប្រចាំ",
    "subtitle": "ទូទាត់វិក្កយបត្រពីគំរូដែលអ្នកប្រើញឹកញាប់",
  },
  {
    "icon": Icons.add_call,
    "title": "បញ្ចូលលុយទូរសព្ទ",
    "subtitle": "ប្រព័ន្ធទូរសព្ទ",
  },
  {
    "icon": Icons.electrical_services_outlined,
    "title": "ទឹកភ្លើង និងសំរាម",
    "subtitle": "ទូទាត់ទឹកភ្លើង និងវិក្កយបត្រសមរាម",
  },
  {
    "icon": Icons.account_balance_outlined,
    "title": "សេវាស្ថាប័នរដ្ឋាភិបាល",
    "subtitle": "បង់ពន្ធ ឬសេវាសាធារណៈ",
  },
  {
    "icon": Icons.wifi,
    "title": "ជ្រើសរើសគំរូទូទាត់ប្រចាំ",
    "subtitle": "ទូទាត់វិក្កយបត្រពីគំរូដែលអ្នកប្រើញឹកញាប់",
  },
  {
    "icon": Icons.real_estate_agent,
    "title": "បញ្ចូលលុយទូរសព្ទ",
    "subtitle": "ប្រព័ន្ធទូរសព្ទ",
  },{
    "icon": Icons.cast_for_education,
    "title": "អុីនធ័រណេត និងទូរទស្សន៍",
    "subtitle": "ទូទាត់វិក្កយបត្រពីគំរូដែលអ្នកប្រើញឹកញាប់",
  },
  {
    "icon": Icons.add_call,
    "title": "បញ្ចូលលុយទូរសព្ទ",
    "subtitle": "ប្រព័ន្ធទូរសព្ទ",
  },
  {
    "icon": Icons.payment,
    "title": "ជ្រើសរើសគំរូទូទាត់ប្រចាំ",
    "subtitle": "ទូទាត់វិក្កយបត្រពីគំរូដែលអ្នកប្រើញឹកញាប់",
  },
  {
    "icon": Icons.add_call,
    "title": "បញ្ចូលលុយទូរសព្ទ",
    "subtitle": "ប្រព័ន្ធទូរសព្ទ",
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
              'ទូទាត់ប្រាក់',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'KantumruyPro',
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_sharp,
              color: Colors.white,
              size: 32,
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
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    height: 170,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ទូទាត់ប្រាក់",
                          style: TextStyle(color: Colors.white, fontSize: 22, fontFamily: 'KantumruyPro'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "បញ្ចូលលុយទូរសព្ទ បង់ទឹក ភ្លើង សំរាម និងសេវាចឫបាច់នានាដោយឥតគិតថ្លៃ",
                          style: TextStyle(color: Colors.white70, fontSize: 16, fontFamily: 'KantumruyPro', fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 170,
                    child: const Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ClipRect(
                            child: Align(
                              alignment: Alignment.center,
                              widthFactor: 0.5,
                              heightFactor: 0.7,// Adjust this value to clip more or less
                              child: Icon(
                                Icons.attach_money,
                                size: 170,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 16)

            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: const Color(0xFF091015),
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
                        padding: const EdgeInsets.symmetric(vertical: 4.0), // Adjust the padding inside the card as needed
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 32, // Adjust the radius to make the circle bigger
                            backgroundColor: Colors.white24, // Background color of the circle
                            child: Icon(
                              item["icon"], // Use the icon from the list
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                          title: Text(
                            item["title"], // Use the title from the list
                            style: const TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'KantumruyPro', fontWeight: FontWeight.w300),
                          ),
                          subtitle: Text(
                            item["subtitle"], // Use the subtitle from the list
                            style: const TextStyle(color: Colors.white70, fontSize: 16, fontFamily: 'KantumruyPro',fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFF002E44),
    );
  }
}