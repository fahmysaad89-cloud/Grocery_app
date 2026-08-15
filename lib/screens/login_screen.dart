import 'package:flutter/material.dart';
import 'package:gorcery_app/gorcery_app.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.11),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.42),
                Center(child: Image.asset("assets/images/carot.png")),
                SizedBox(height: 100.21),
                Text(
                  'login',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: .w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Enter your emails and password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                SizedBox(height: 40),
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
                InkWell(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const GorceryApp()),
                      );
                    } else {}
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 24.5),
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19),
                    ),

                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Color(0xffFFF9FF),
                          fontWeight: .w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontWeight: .w600,
                        fontSize: 14,
                        color: Color(0xff181725),
                      ),
                    ),
                    Text(
                      ' Signup',
                      style: TextStyle(
                        fontWeight: .w600,
                        fontSize: 14,
                        color: Color(0xff53B175),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
