import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/widges/account_info.dart';
import 'package:gorcery_app/screens/widges/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20.99),
        child: Column(
          children: [
            AccountInfo(),
            SizedBox(height: 30),
            Divider(),
            AccountOption(
              text: 'orders',
              icon: Icons.breakfast_dining_outlined,
            ),
            AccountOption(
              text: 'My Details',
              icon: Icons.quick_contacts_mail_outlined,
            ),
            AccountOption(
              text: 'Delivery Address',
              icon: Icons.location_on_outlined,
            ),
            AccountOption(text: 'Payment Methods', icon: Icons.payment_rounded),
            AccountOption(
              text: 'Promo Cord',
              icon: Icons.confirmation_number_outlined,
            ),
            AccountOption(
              text: 'Notifecations ',
              icon: Icons.notifications_none_outlined,
            ),
            AccountOption(text: 'Help', icon: Icons.help_outline_outlined),
            AccountOption(text: 'About ', icon: Icons.info_outlined),
            SizedBox(height: 52.23),
            Container(
              width: 364,
              // height: 67,
              padding: EdgeInsets.symmetric(vertical: 26.5),
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.circular(19),
              ),

              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Positioned(
                    left: 25,
                    child: Icon(
                      Icons.logout_outlined,
                      size: 24,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Text(
//                 'Log Out',
//                 style: TextStyle(
//                   color: Color(0xff53B175),
//                   fontWeight: .w600,
//                   fontSize: 18,
//                 ),
//               ),