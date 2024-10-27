import 'package:flutter/material.dart';
import '../configure/configure.dart';
import 'bank_service_widget.dart';

void main() {
  runApp(const MaterialApp(
    home: BankService(),
  ));
}
class BankService extends StatelessWidget {
  const BankService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: fontPrimaryWhite,
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 2,
        children: const [
          CustomBankServiceWidget(
            backgroundColor: fontPrimaryBlack,
            icon: Icons.folder,
            title: 'គណនី',
            textColor: fontPrimaryWhite,
          ),
          CustomBankServiceWidget(
            backgroundColor: fontPrimaryBlack,
            icon: Icons.folder,
            title: 'គណនី',
            textColor: fontPrimaryWhite,
          ),
          CustomBankServiceWidget(
            backgroundColor: fontPrimaryBlack,
            icon: Icons.folder,
            title: 'គណនី',
            textColor: fontPrimaryWhite,
          ),
          CustomBankServiceWidget(
            backgroundColor: fontPrimaryBlack,
            icon: Icons.folder,
            title: 'គណនី',
            textColor: fontPrimaryWhite,
          ),
          CustomBankServiceWidget(
            backgroundColor: fontPrimaryBlack,
            icon: Icons.folder,
            title: 'គណនី',
            textColor: fontPrimaryWhite,
          ),
          CustomBankServiceWidget(
            backgroundColor: fontPrimaryBlack,
            icon: Icons.folder,
            title: 'គណនី',
            textColor: fontPrimaryWhite,
          ),
        ],
      ),
    );
  }
}
