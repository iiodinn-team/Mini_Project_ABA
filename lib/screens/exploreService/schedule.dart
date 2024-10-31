import 'package:flutter/material.dart';

import '../../configure/configure.dart';
import '../homePage/home.dart';

// void main() {
//   runApp(const SchedulePage());
// }

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Schedule",
      debugShowCheckedModeBanner: false,
      home: ScheduleHome(),
    );
  }
}

class ScheduleHome extends StatelessWidget {
  const ScheduleHome({super.key});

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
              'ការវិភាគ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w200,
                fontFamily: 'KantumruyPro',
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
                    height: 200,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ផ្ទេរប្រាក់ & ការទូទាត់",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'KantumruyPro'),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "រៀបចំទម្លាប់ប្រចាំថ្ងៃរបស់អ្នក។ កំណត់ប្រតិបត្តិការដោយស្វ័យប្រវត្តិសម្រាប់ការទូទាត់ ឬការផ្ទេរប្រាក់លើស",
                          style: TextStyle(color: Colors.white70, fontSize: 15, fontFamily: 'KantumruyPro', fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    child: const Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.calendar_month,
                            size: 100,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: const Color(0xFF091015),
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First button
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1C1F24),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Payments & Transfers",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'KantumruyPro',
                      ),
                    ),
                  ),
                  // Second button
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF00CFFF),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),

                      ),
                    ),
                    child: const Text(
                      "ឥណពន្ធផ្ទាល់",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Kantumruy',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0xFF091015),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.file_copy,
                          color: fontPrimaryWhite,
                          size: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "មិនមានទម្រង់បែបបទ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: fontPrimaryWhite,
                        fontFamily: 'Kantumruy',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "ដើម្បីបង្កើតកាលវិភាគ សូមចុចសញ្ញាបូក (+) ខាងក្រោម",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'Kantumruy',
                          fontWeight: FontWeight.w100,
                        ),
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

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: fontPrimaryWhite),
        shape: const CircleBorder(),
        backgroundColor: accentColorRed,
      ),
    );
  }
}



