import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_aba/configure/configure.dart';
import 'package:mini_project_aba/widgets/bank_service.dart';

import '../../widgets/bank_service_widget.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
   Home({super.key});

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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // User Profile & Greeting
                Row(
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.08,
                      backgroundImage: const NetworkImage('https://fwcdn.pl/ppo/38/31/233831/464223_1.3.jpg'),
                    ),
                    SizedBox(width: padding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'សួស្តី, Minhoo',
                          style: TextStyle(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
                          ),
                        ),
                        Text(
                          'មើលប្រូហ្វាល >',
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: fontPrimaryWhite,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: padding * 2),

                // Balance Section
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(22),
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
                                fontSize: size.width * 0.07,
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
                              child: Text(
                                'គណនីគោល',
                                style: TextStyle(
                                  fontSize: size.width * 0.035,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: padding * 0.4),
                            const Text(
                              'Mobile Saving',
                              style: TextStyle(
                                color: fontPrimaryWhite,
                                fontSize: 14,
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
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      'ទទួលលុយចូល',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: fontPrimaryWhite,
                                        fontWeight: FontWeight.bold,
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
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      'ផ្ញើលុយចេញ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: fontPrimaryWhite,
                                        fontWeight: FontWeight.bold,
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

                // Bank Service Section with Column
                Container(
                  constraints: BoxConstraints(maxHeight: size.height * 0.28),
                 // padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8 ),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.folder,
                              title: 'គណនី',
                              textColor: fontPrimaryWhite,
                            ),
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.credit_card,
                              title: 'កាត',
                              textColor: fontPrimaryWhite,
                            ),
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.paid,
                              title: 'ទូទាត់',
                              textColor: fontPrimaryWhite,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomBankServiceWidget(
                              backgroundColor: fontPrimaryBlack,
                              icon: Icons.qr_code,
                              title: 'ABA ស្កែន',
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
                      Container(
                        width: 360,
                        height: 1,
                        color: fontPrimaryWhite,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "សេវាស្ថាប័នរដ្ធាភិបាល",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ផ្ញើប្រាក់ទៅ ATM",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "សេវាកម្ម",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "គណនីថ្មី",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "កាលវិភាគ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ណែនាំដល់មិត្តភក្តិ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "កម្ចី",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ABA ចាយបានលុយ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "អាត្រាប្តូរប្រាក់",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ទីតាំង ABA",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "សៀវភៅមូលប្បប័ត្រ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),


                const SizedBox(height: 30),

                // Footer Ad Banner
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ដំណឹង & ប្រម៉ូសិន',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: fontPrimaryWhite,
                      )
                    ),
                    const SizedBox(height: 14,),
                    SizedBox(
                      width: double.infinity,
                      child: CarouselSlider(
                        items: carouselItems,
                        options: CarouselOptions(
                          height: size.height * 0.15,
                          viewportFraction: 1.0,
                          enlargeCenterPage: true,
                          // Customize the height of the carousel
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ], // children of list view
        ),
      ),
    );
  }
}

// Custom Action Button Widget
class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final Size size;

  ActionButton({required this.label, required this.color, required this.size});

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
