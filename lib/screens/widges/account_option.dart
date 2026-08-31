import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon),
            SizedBox(width: 20),
            Text(text, style: TextStyle(fontSize: 18, fontWeight: .bold)),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
