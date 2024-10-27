import 'package:flutter/material.dart';
import 'package:mini_project_aba/configure/configure.dart';
import 'package:mini_project_aba/widgets/bank_service.dart';

import '../../widgets/bank_service_widget.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

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
                SizedBox(height: padding * 2),

                // Bank Service
                const BankService(),
                SizedBox(height: padding * 2),

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
                    const SizedBox(height: 12,),
                    Container(
                      height: size.width * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSodnR2vsw4u9d2tV99JujVwTL1pDl0vdEf1pqr3NcG4VN4zYUkrIg-mNKSb9hv3YBC2R4&usqp=CAU'),
                          fit: BoxFit.cover,
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
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: size.width * 0.04),
      ),
    );
  }
}
