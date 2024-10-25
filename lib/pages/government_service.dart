import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(GovernmentPage());
}

class GovernmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Government Service",
     debugShowCheckedModeBanner: false,
     home: GovernmentHomePage(),
   );
  }
}

class GovernmentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: const Icon(Icons.arrow_back , color: Colors.white, size: 32 ),
        titleSpacing: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('ABA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(width: 10),
            Text('ទូទាត់ប្រាក់' ,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {} , 
              icon: const Icon(Icons.search_sharp , color: Colors.white , size: 32,)
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3, // 3 columns total
        children: [
          Expanded(
            flex: 2, // Text takes up 2 columns
            child: Container(
              color: Colors.indigo,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
            flex: 1, // Icon takes 1 column
            child: Container(
              alignment: Alignment.bottomRight,
              color: Colors.blue,
              child: Icon(
                Icons.dashboard_customize_outlined,
                size: 100,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),

        

    );
  }
}