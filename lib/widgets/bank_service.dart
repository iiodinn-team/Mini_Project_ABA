import 'package:flutter/material.dart';
import 'package:mini_project_aba/configure/configure.dart';

class BankService extends StatelessWidget {
  final double padding = 8.0;
  final List<Map<String, String>> gridItems = [
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/2099/2099215.png',
      'text': 'គណនី',
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/656/656975.png',
      'text': 'កាត',
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/1667/1667859.png',
      'text': 'ទូទាត់',
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/7463/7463730.png',
      'text': 'ABA ស្កែន',
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/4251/4251580.png',
      'text': 'គំរូទូទាត់ប្រចាំ',
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/5166/5166424.png',
      'text': 'ផ្ទេរប្រាក់',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(24),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: gridItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: padding,
          mainAxisSpacing: padding,
        ),
        itemBuilder: (context, index) {
          double imageSize = (index == 0 || index == 1 || index == 2 || index == 4) ? 38 : 50;

          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: imageSize,
                  height: imageSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    gridItems[index]['image']!,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                    color: accentColorAmber,
                  ),
                ),
                SizedBox(height: padding * 0.5),
                Text(
                  gridItems[index]['text']!,
                  style: TextStyle(
                    fontSize: size.width * 0.035,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
