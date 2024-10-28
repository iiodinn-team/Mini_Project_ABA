import 'package:flutter/material.dart';

void main() {
  runApp(const GovernmentPage());
}

class GovernmentPage extends StatelessWidget {
  const GovernmentPage({super.key});

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
              'ទូទាត់ប្រាក់',
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
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                color: Colors.black87,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey.shade800,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.m7LnR2rAzamqD5tCdqNbjAHaHa?w=173&h=180&c=7&r=0&o=5&pid=1.7"),
                          radius: 20,
                          backgroundColor: Colors.grey,
                        ),
                        title: Text(
                          "សេវារដ្ឋបាលសំខាន់ៗ",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        subtitle: Text(
                          "ការបង់ប្រាក់ពន្ធគយ និងទូទាត់ផ្សេងៗ",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.indigo.shade900,
    );
  }
}
