import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_aba/configure/configure.dart';
import 'package:mini_project_aba/widgets/bank_service.dart';
import 'package:mini_project_aba/widgets/service_card.dart';

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
                  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.38),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
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
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 12),
                      Container(
                        width: 360,
                        height: 1,
                        color: fontPrimaryWhite,
                      ),
                      const SizedBox(height: 16),
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
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ផ្ញើប្រាក់ទៅ ATM",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "សេវាកម្ម",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "គណនីថ្មី",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "កាលវិភាគ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ណែនាំដល់មិត្តភក្តិ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "កម្ចី",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ABA ចាយបានលុយ",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "អាត្រាប្តូរប្រាក់",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
                              icon: Icons.home_filled,
                              text: "ទីតាំង ABA",
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            SizedBox(width: 8),
                            CustomBankService(
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

                // Ad Banner
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
                        Text('រកមើលសេវាកម្ម',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
                          ),
                        ),

                        Text('រកមើលសេវាកម្ម >',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
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
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://cdn-icons-png.flaticon.com/128/16757/16757823.png',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://b2b-cambodia.com/storage/uploads/articles/large/eCD1qa1PSRIqYhK5wLbXbRMDOVnpzNDlaN5QUgdP.png',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://vireakbuntham.com/img/vet.ff4db239.png',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://pbs.twimg.com/profile_images/610991506271244288/Ztu79xaF_400x400.png',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9bMQS7Xx1KS0h2oc4Lr87SqCL-6XRlvTD8w&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://pbs.twimg.com/profile_images/1543952615456792576/vlfuBIFX_400x400.jpg',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://yt3.googleusercontent.com/LrP7ADWn0wxn0s5w9VE2MHPx8rl1c3X9emR63S3qEFUi2xAVYaJMJwsrWorbpv429OO3lZs2=s900-c-k-c0x00ffffff-no-rj',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLi63PCfJm1O2eL0kHCYbUMd_SeLHmg4RlZw&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                          ],
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
                        Text('រកមើលសេវាកម្ម',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
                          ),
                        ),

                        Text('រកមើលសេវាកម្ម >',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
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
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                          ],
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
                        Text('រកមើលសេវាកម្ម',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
                          ),
                        ),

                        Text('រកមើលសេវាកម្ម >',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: fontPrimaryWhite,
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
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,), ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                            ServiceCard(
                              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuirN4pNOfF2hJYvy64mVE959fTB0Jy0ln5Q&s',
                              text: 'ក្រឌីត ប្បួរ៉ូខេមបូឌា',
                            ),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30,),

                Container(
                  decoration: BoxDecoration(
                    color: fontPrimaryWhite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: const Text('កែអេក្រង់ដើម',
                        style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                          color: fontPrimaryBlack,
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
