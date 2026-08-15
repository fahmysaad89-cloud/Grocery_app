import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTapOutside: (value) {
            FocusScope.of(context).unfocus();
          },
          decoration: const InputDecoration(
            labelText: 'email',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff53B175)),
            ),

            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: .w600,
              color: Color(0xff7C7C7C),
            ),
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }

            if (!value.contains('@gmail.com')) {
              return 'Enter a valid email';
            }

            return null;
          },
        ),
        SizedBox(height: 30),

        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff53B175)),
            ),
            suffixIcon: Icon(Icons.visibility_off_outlined),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: .w600,
              color: Color(0xff7C7C7C),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }

            if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }

            if (!RegExp(r'[a-z]').hasMatch(value)) {
              return 'Password must contain a lowercase letter';
            }

            if (!RegExp(r'[A-Z]').hasMatch(value)) {
              return 'Password must contain an uppercase letter';
            }

            if (!RegExp(r'[0-9]').hasMatch(value)) {
              return 'Password must contain a number';
            }

            return null;
          },
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xff181725),
              fontWeight: .w400,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
