import 'package:flutter/material.dart';
import 'package:flutter_bank/utils/my_colors.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Card',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter ',
              color: MyColors.black),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color:MyColors.grey)),
              child: IconButton(
                icon: const Icon(
                  Icons.password,
                  color: MyColors.darkPurple,
                ),
                onPressed: () {},
              ),
            ),
            title: const Text(
              'Show PIN',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter ',
                  color: MyColors.black),
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: MyColors.black,
            ),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: MyColors.grey)),
              child: IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: MyColors.darkPurple,
                ),
                onPressed: () {},
              ),
            ),
            title: const Text(
              'Manage Payment Method',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter ',
                  color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: MyColors.black,
            ),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: MyColors.grey)),
              child: IconButton(
                icon: const Icon(
                  Icons.lock_open,
                  color: MyColors.darkPurple,
                ),
                onPressed: () {},
              ),
            ),
            title: const Text(
              'Unblock PIN',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter ',
                  color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: MyColors.black,
            ),
          ),
          ListTile(
            leading:Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: MyColors.grey)),
              child: IconButton(
                icon: const Icon(
                  Icons.credit_card,
                  color: MyColors.darkPurple,
                ),
                onPressed: () {},
              ),
            ),
            title: const Text(
              'Replace Card',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter ',
                  color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: MyColors.black,
            ),
          ),
          ListTile(
            leading:Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: MyColors.grey)),
              child: IconButton(
                icon: const Icon(
                  Icons.speed,
                  color: MyColors.darkPurple,
                ),
                onPressed: () {},
              ),
            ),
            title: const Text(
              'Card Limit',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter ',
                  color: Colors.black),
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: MyColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
