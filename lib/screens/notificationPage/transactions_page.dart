import 'package:flutter/material.dart';

import '../../configure/configure.dart';


class TransactionsPage extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {
      "title": "SORN SIYEAN",
      "amount": "2000.00 KHR",
      "description": "ដកទឹកប្រាក់ពីតាមរយះ 002 584 665",
      "time": "12:26 PM",
      "icon": "home"
    },
    {
      "title": "Cellcard Mobile(Pin-less)",
      "amount": "1.00 USD",
      "description": "បញ្ចូលប្រាក់ទៅ 012558994 តាមរយះ 002 584 665",
      "time": "10:10 AM",
      "icon": "wifi"
    },
    {
      "title": "ចំនួនប្រាក់តែ HENG SOTHIB",
      "amount": "2.00 USD",
      "description": "ដកពីគណនីលេខ 002 584 665",
      "time": "10:10 AM",
      "icon": "swap_horiz"
    },
    {
      "title": "Tevy",
      "amount": "2000.00 KHR",
      "description": "ដកទឹកប្រាក់ពីតាមរយះ 002 584 665",
      "time": "12:26 PM",
      "icon": "home"
    },
    {
      "title": "Smart Mobile(Pin-less)",
      "amount": "1.00 USD",
      "description": "បញ្ចូលប្រាក់ទៅ 012558994 តាមរយះ 002 584 665",
      "time": "10:10 AM",
      "icon": "wifi"
    },
    {
      "title": "ចំនួនប្រាក់តែ Leang Naikim",
      "amount": "1.00 USD",
      "description": "ដកពីគណនីលេខ 002 584 665",
      "time": "12:10 AM",
      "icon": "swap_horiz"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ថ្ងៃនេះ",
                style: TextStyle(
                  color: fontPrimaryWhite85,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Kantumruy',
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Card(
                  color: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22,
                        child: CircleAvatar(
                          backgroundColor: _getBackgroundColor(transaction["icon"]!),
                          radius: 20,
                          child: Icon(
                            _getIcon(transaction["icon"]!),
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              transaction["title"]!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w200,
                                color: fontPrimaryWhite,
                                fontFamily: 'Kantumruy',
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            transaction["time"]!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Kantumruy',
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction["amount"]!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Kantumruy',
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            transaction["description"]!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Kantumruy',
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case "home":
        return Icons.home;
      case "wifi":
        return Icons.wifi;
      case "swap_horiz":
        return Icons.swap_horiz;
      default:
        return Icons.error;
    }
  }

  Color _getBackgroundColor(String iconName) {
    switch (iconName) {
      case "home":
        return secondaryColor;
      case "wifi":
        return Colors.orange;
      case "swap_horiz":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
