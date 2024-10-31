import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_aba/configure/configure.dart';
import 'package:mini_project_aba/widgets/bank_service.dart';
import 'package:mini_project_aba/widgets/service_card.dart';

import '../../pages/card_screen.dart';
import '../../pages/payment_screen.dart';
import '../../pages/profile_screen.dart';
import '../../pages/splash_screen.dart';
import '../../widgets/bank_service_widget.dart';
import '../exploreService/schedule.dart';
import '../govermentServicePage/government_service.dart';
import '../history/history.dart';
import '../notificationPage/bottom_navigation_bar_page.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  HomeApp({super.key});

   List<Widget> carouselItems = [
     ClipRRect(
       borderRadius: BorderRadius.circular(15.0),
       child: Image.network(
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRufospeicvIxbJrqvLNc4DVnqQtYn6XSZmHA&s',
         fit: BoxFit.cover,
         width: double.infinity,
       ),
     ),
     ClipRRect(
       borderRadius: BorderRadius.circular(15),
       child: Image.network(
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7XEWpVlO87GbVyB07ffuRkyvtyMWohz9qH44drVE0NR6hKABUecoJyg2wtxX-V4dOGMU&usqp=CAU',
         fit: BoxFit.cover,
         width: double.infinity,
       ),
     ),
     ClipRRect(
       borderRadius: BorderRadius.circular(15),
       child: Image.network(
         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEl9968QE-TxWgaII_hNJGE9u1eeknS7D0fRhqdko8dx6YZQGU0PvSRvMTUolhOrNMWZE&usqp=CAU',
         fit: BoxFit.cover,
         width: double.infinity,
       ),
     ),
   ];


   @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.05;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigationBarPage()),
              );
            },
            icon: const Icon(
              Icons.notifications_none_sharp,
              color: Colors.white,
              size: 32,
            ),
          ),

        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.08,
                        backgroundImage: const NetworkImage('https://fwcdn.pl/ppo/38/31/233831/464223_1.3.jpg'),
                      ),
                      SizedBox(width: padding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'សួស្តី,',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w100,
                                    color: fontPrimaryWhite,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Minhoo!',
                                  style: TextStyle(
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'មើលប្រូហ្វាល >',
                            style: TextStyle(
                              fontSize: size.width * 0.04,
                              color: Colors.white70,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: padding * 2),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$10000.0000',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: fontPrimaryWhite,
                              ),
                            ),
                            Icon(
                              Icons.visibility_off,
                              size: size.width * 0.06,
                              color: fontPrimaryWhite,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                color: accentColorAmber,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HistoryPage()),
                                  );
                                },
                                child: Text(
                                  'គណនីគោល',
                                  style: TextStyle(
                                    fontSize: size.width * 0.035,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ),
                            SizedBox(width: padding * 0.4),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HistoryPage()), // Replace with your destination page
                                );
                              },
                              child: const Text(
                                'Mobile Savings',
                                style: TextStyle(
                                  color: fontPrimaryWhite, // Ensure this variable is defined in your code
                                  fontSize: 14,
                                ),
                              ),
                            ),

                          ],
                        ),
                        const SizedBox(height: 18),
                        Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.identity()..rotateZ(0.349),
                                      child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(
                                          Colors.green,
                                          BlendMode.srcATop,
                                        ),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/128/159/159694.png',
                                          width: 22,
                                          height: 22,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      'ទទួលលុយចូល',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: fontPrimaryWhite,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.identity()..rotateZ(-2.79),
                                      child: ColorFiltered(
                                        colorFilter: const ColorFilter.mode(
                                          Colors.red,
                                          BlendMode.srcATop,
                                        ),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/128/159/159694.png',
                                          width: 22,
                                          height: 22,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      'ផ្ញើលុយចេញ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: fontPrimaryWhite,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.45),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.folder,
                              title: 'គណនី',
                              textColor: fontPrimaryWhite,
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CardScreen(), // Replace with your screen
                                  ),
                                );
                              },
                              child: const CustomBankServiceWidget(
                                backgroundColor: fontPrimaryBlack,
                                icon: Icons.credit_card,
                                title: 'កាត',
                                textColor: fontPrimaryWhite,
                              ),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentScreen(), // Replace with your screen
                                  ),
                                );
                              },
                              child: const CustomBankServiceWidget(
                                backgroundColor: fontPrimaryBlack,
                                icon: Icons.paid,
                                title: 'ទូទាត់',
                                textColor: fontPrimaryWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.qr_code,
                              title: 'ស្កែន',

                              textColor: fontPrimaryWhite,
                            ),
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.star_border,
                              title: 'ទូទាត់ប្រចាំ',
                              textColor: fontPrimaryWhite,
                            ),
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.arrow_forward,
                              title: 'ផ្ទេប្រាក់',
                              textColor: fontPrimaryWhite,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 360,
                        height: 1,
                        color: fontPrimaryWhite,
                      ),
                      const SizedBox(height: 16),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GovernmentPage(),
                                  ),
                                );
                              },
                              child: const CustomBankService(
                                icon: Icons.home_filled,
                                text: "សេវាស្ថាប័នរដ្ធាភិបាល",
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "ផ្ញើប្រាក់ទៅ ATM",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "សេវាកម្ម",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "គណនីថ្មី",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SchedulePage(), // Replace with your screen
                                  ),
                                );
                              },
                              child: const CustomBankService(
                                icon: Icons.home_filled,
                                text: "កាលវិភាគ",
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                              ),
                              ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "ណែនាំដល់មិត្តភក្តិ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,

                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "កម្ចី",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "ABA ចាយបានលុយ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "អាត្រាប្តូរប្រាក់",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "ទីតាំង ABA",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const CustomBankService(
                              icon: Icons.home_filled,
                              text: "សៀវភៅមូលប្បប័ត្រ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ដំណឹង & ប្រម៉ូសិន',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: fontPrimaryWhite,
                        fontFamily: 'Kantumruy',
                      )
                    ),
                    const SizedBox(height: 14,),
                    SizedBox(
                      width: double.infinity,
                      child: CarouselSlider(
                        items: carouselItems,
                        options: CarouselOptions(
                          height: size.height * 0.20,
                          viewportFraction: 1.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                          },
                        ),
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 30,),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ការរកឃើញ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: fontPrimaryWhite,
                            fontFamily: 'Kantumruy',
                          ),
                        ),

                      ],
                    ),

                    const SizedBox(height: 16,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              StyledCard(
                                imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.My-WCeLcYk67T4NhmEtEkAHaFO?w=236&h=166&c=7&o=5&pid=1.20',
                                text: 'Byte',
                              ),
                              StyledCard(
                                imageUrl: 'https://tse4.mm.bing.net/th/id/OIP.I1MjHFpzo3dnGwLKRPoTjwHaFj?w=236&h=177&c=7&o=5&pid=1.20',
                                text: 'Flator',
                              ),
                              StyledCard(
                                imageUrl: 'https://th.bing.com/th/id/OIP.34q6YEZrimVgVHR0ZI5V-AHaHa?&w=160&h=240&c=7&pid=ImgDet',
                                text: 'PlUTI',
                              ),
                              // Add more StyledCard widgets as needed
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 30,),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('សេវាស្ថាប័នរដ្ឋាភិបាល',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: fontPrimaryWhite,
                            fontFamily: 'Kantumruy',
                          ),
                        ),

                        Text('រកមើលសេវាកម្ម >',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                            color: fontPrimaryWhite,
                            fontFamily: 'Kantumruy',
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 16,),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th?id=OIP.pvPTXhvhXLcSrJChXexgUgHaHP&w=252&h=247&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                              text: 'ទេសចរណ៍',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th?id=OIP.Wa0aFzTqE6RaVB7demzqCgAAAA&w=248&h=251&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                              text: 'សាធារណការ',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th/id/OIP.OBOvIHtiz-dSQaEwNvQ2ewHaD5?w=331&h=180&c=7&r=0&o=5&pid=1.7',
                              text: 'ព័ត៍មាន',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th/id/OIP.lhDmkPHLpUrkbhC-yORDLwHaHQ?w=178&h=180&c=7&r=0&o=5&pid=1.7',
                              text: 'ពាណិជ្ចកម្ម',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th/id/OIP.vZ-VTWQzncs6H9Pt7IH2EgHaHa?w=184&h=184&c=7&r=0&o=5&pid=1.7',
                              text: 'ការងារ',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th?q=%e1%9e%9f%e1%9e%9f%e1%9e%99%e1%9e%80+Logo&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=KH&setlang=en&adlt=strict&t=1&mw=247',
                              text: 'យុវជន',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://th.bing.com/th/id/OIP.YJLD05GVldfOlQQNZaYEQQHaHa?w=201&h=202&c=7&r=0&o=5&pid=1.7',
                              text: 'គរុនិស្សិត',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://th.bing.com/th/id/OIP.U2lSkJ-H1GZ2Q1fEUP2EMwHaHa?pid=ImgDet&w=192&h=192&c=7',
                              text: 'សមាគម',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://th.bing.com/th/id/OIP.qEKS7r3oncMWDA_LGn7TSgHaFP?rs=1&pid=ImgDetMain',
                              text: 'គណនេយ្យ',
                            ),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('រកមើលសេវាកម្ម',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                            color: fontPrimaryWhite,
                            fontFamily: 'Kantumruy',
                          ),
                        ),

                        Text('រកមើលសេវាកម្ម >',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                            color: fontPrimaryWhite,
                            fontFamily: 'Kantumruy',
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 16,),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsWrbplKrYw93zgjKLlLnKxjwVaNZSo5oeHQ&s',
                              text: 'ក្រឌីត',
                            ),
                            SizedBox(width: 10,),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://b2b-cambodia.com/storage/uploads/articles/large/eCD1qa1PSRIqYhK5wLbXbRMDOVnpzNDlaN5QUgdP.png',
                              text: 'មិត្តហ្វូម',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://vireakbuntham.com/img/vet.ff4db239.png',
                              text: 'វិរះប៉ុនថាំង',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://pbs.twimg.com/profile_images/610991506271244288/Ztu79xaF_400x400.png',
                              text: 'ប៉ុកមី',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9bMQS7Xx1KS0h2oc4Lr87SqCL-6XRlvTD8w&s',
                              text: 'ខេមបូ',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://pbs.twimg.com/profile_images/1543952615456792576/vlfuBIFX_400x400.jpg',
                              text: 'មែនញូ',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://yt3.googleusercontent.com/LrP7ADWn0wxn0s5w9VE2MHPx8rl1c3X9emR63S3qEFUi2xAVYaJMJwsrWorbpv429OO3lZs2=s900-c-k-c0x00ffffff-no-rj',
                              text: 'ហ្កាឌិន',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLi63PCfJm1O2eL0kHCYbUMd_SeLHmg4RlZw&s',
                              text: 'ខេមបូត',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF101D26),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: const Text('កែអេក្រង់ដើម',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                          color: Colors.white70,
                        ),
                      )
                  ),
                )

              ],
            ),
          ], // children of list view
        ),
      ),
    );
  }
}

Widget _buildServiceCard(String title, String imagePath) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 50, height: 50),
        const SizedBox(height: 8),
        Text(title),
      ],
    ),
  );
}

// Corrected _buildAppCard function
Widget _buildAppCard(String title, String imagePath) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 100, height: 100),
        const SizedBox(height: 8),
        Text(title),
      ],
    ),
  );
}


class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final Size size;

  const ActionButton({super.key, required this.label, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03, vertical: size.width * 0.02),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: size.width * 0.04),
      ),
    );
  }
}


class StyledCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const StyledCard({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.teal[700],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentColorAmber, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}