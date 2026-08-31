import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 63.441715240478516,
          height: 64.32317352294922,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/images/profile_image.jpeg').image,
            ),
          ),
        ),
        SizedBox(width: 20.16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Saad Fahmy',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                SizedBox(width: 10.4),
                Icon(Icons.edit_outlined, size: 21, color: Color(0xff4CAF73)),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'saad97@gmail.com',
              style: TextStyle(
                color: Color(0xff7C7C7C),
                fontWeight: .w400,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
