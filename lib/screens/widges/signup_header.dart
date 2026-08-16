import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 28.42),
        Center(child: Image.asset("assets/images/carot.png")),
        SizedBox(height: 100.21),
        Text(
          'sign up',
          style: TextStyle(
            fontSize: 26,
            fontWeight: .w600,
            color: Color(0xff181725),
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Enter your credentials to continue',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff7C7C7C),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
