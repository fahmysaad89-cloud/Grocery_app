import 'package:flutter/material.dart';
import 'package:gorcery_app/gorcery_app.dart';
import 'package:gorcery_app/screens/signup_screen.dart';
import 'package:gorcery_app/screens/widges/login_body.dart';
import 'package:gorcery_app/screens/widges/login_headr.dart';

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
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginHeadr(),
                  LoginBody(),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          ' Signup',
                          style: TextStyle(
                            fontWeight: .w600,
                            fontSize: 14,
                            color: Color(0xff53B175),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
