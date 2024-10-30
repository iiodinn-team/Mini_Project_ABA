import 'package:flutter/material.dart';

import '../homePage/home.dart';

// void main() {
//   runApp(const GovernmentPage());
// }

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

final List<Map<String, String>> items = [
  {
    'title': 'សេវារដ្ឋបាលសំខាន់ៗ',
    'subtitle': 'ការបង់ប្រាក់ពន្ធគយ និងទូទាត់ផ្សេងៗ',
    'imageUrl': 'https://th.bing.com/th/id/OIP.D-xQ5JvKQzHBMkHBw-MLVwHaJY?w=127&h=180&c=7&r=0&o=5&pid=1.7',
  },
  {
    'title': 'ការផ្តល់សេវា សុខាភិបាល',
    'subtitle': 'ការទូទាត់សេវារង្វាន់សុខាភិបាល',
    'imageUrl': 'https://th.bing.com/th/id/OIP.TN2axdBtKxat-Wzi6AnJHQAAAA?pid=ImgDet&w=192&h=192&c=7',
  },
  {
    'title': 'សេវាការពារសង្គម',
    'subtitle': 'ទូទាត់ប្រាក់ចំណូលកាន់កាប់សង្គម',
    'imageUrl': 'https://th.bing.com/th/id/OIP.nCxs3XSv2fi_TVev-J7ySQHaHa?pid=ImgDet&w=192&h=192&c=7',
  },
  {
    'title': 'សេវាកម្មវប្បធម៌',
    'subtitle': 'ជំនួយការផ្តល់សេវាជាតិ',
    'imageUrl': 'https://th.bing.com/th/id/OIP.5J_gyidurGrI4t7mbUq5OAAAAA?pid=ImgDet&w=192&h=212&c=7',
  },
  {
    'title': 'ទូទាត់បរិច្ចាគសាធារណៈ',
    'subtitle': 'សេវាទូទាត់ការបរិច្ចាគផ្សេងៗ',
    'imageUrl': 'https://th.bing.com/th/id/OIP.7AKgF3ZeFQyOMlwrfnIsxwAAAA?pid=ImgDet&w=192&h=174&c=7',
  },
  {
    'title': 'សេវាកម្មអប់រំ',
    'subtitle': 'គាំទ្រការអប់រំកុមារ និងមណ្ឌលសិក្សា',
    'imageUrl': 'https://kiridangrek.com/wp-content/uploads/2021/11/Logo-Final.png',
  },
  {
    'title': 'សេវាការពារតំបន់បរិស្ថាន',
    'subtitle': 'ការទូទាត់និងគាំទ្រអភិរក្សធម្មជាតិ',
    'imageUrl': 'https://th.bing.com/th/id/OIP.6TnC9xzRVbLou_CKDwnfnQHaHa?pid=ImgDet&w=192&h=192&c=7',
  },
  {
    'title': 'សេវាហិរញ្ញវត្ថុ',
    'subtitle': 'សេវាបង់ប្រាក់ធនាគាររដ្ឋ',
    'imageUrl': 'https://th.bing.com/th/id/OIP.cE9V3ODn1vKcPL8zK_G8bgHaHB?pid=ImgDet&w=192&h=181&c=7',
  },
  {
    'title': 'សេវាសាធារណៈអនឡាញ',
    'subtitle': 'បន្ថែមសេវាអនឡាញសម្រាប់សាធារណៈ',
    'imageUrl': 'https://th.bing.com/th/id/OIP.LWi9bfBqC8Deh1V-qohKdAHaHa?pid=ImgDet&w=192&h=192&c=7',
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
              'ទូទាត់ប្រាក់',
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
                          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Kantumruy',),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "បង់ថ្លៃពន្ធ ពន្ធគយ ថ្លៃលិខិតអនុញ្ញាតផ្សេងៗ និងថ្លៃចំណាយផ្សេងៗទៀតដល់រដ្ខាភិបាល",
                          style: TextStyle(color: Colors.white,fontFamily: 'Kantumruy',),
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
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                color: Color(0xFF1C1F24),
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Card(
                      color: Colors.white10,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(item['imageUrl']!),
                          radius: 20,
                          backgroundColor: Colors.grey,
                        ),
                        title: Text(
                          item['title']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Kantumruy',
                          ),
                        ),
                        subtitle: Text(
                          item['subtitle']!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontFamily: 'Kantumruy',
                          ),
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
      backgroundColor: const Color(0xFF002E44),
    );
  }
}
