import 'package:flutter/material.dart';

void main() {
  runApp(const HistoryPage());
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Government Service",
      debugShowCheckedModeBanner: false,
      home: GovernmentHomePage(),
    );
  }
}

class GovernmentHomePage extends StatelessWidget {
  const GovernmentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        leading: const Icon(Icons.arrow_back, color: Colors.white, size: 32),
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
              ),
            ),
            SizedBox(width: 10),
            Text(
              'មើលប្រវត្តិ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_control_outlined,
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
                          "សេវាស្ថាប័នរដ្ឋភិបាល",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "បង់ថ្លៃពន្ធ ពន្ធគយ ថ្លៃលិខិតអនុញ្ញាតផ្សេងៗ និងថ្លៃចំណាយផ្សេងៗទៀតដល់រដ្ខាភិបាល",
                          style: TextStyle(color: Colors.white),
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
                          child: Icon(
                            Icons.account_balance,
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
            // const SizedBox(height: 16),
            // Expanded(
            //
            // ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo.shade900,
    );
  }
}
