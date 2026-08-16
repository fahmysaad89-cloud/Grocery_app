import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/widges/signup_body.dart';
import 'package:gorcery_app/screens/widges/signup_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Key? formkey;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.11),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SignupHeader(),
                    SignupBody(),
                    Wrap(
                      children: [
                        Text(
                          'By continuing you agree to our ',
                          style: TextStyle(
                            fontWeight: .w600,
                            fontSize: 14,
                            color: Color(0xff030303),
                          ),
                        ),
                        Text(
                          'Terms of Service ',
                          style: TextStyle(
                            fontWeight: .w600,
                            fontSize: 14,
                            color: Color(0xff53B175),
                          ),
                        ),
                        Text(
                          'and',
                          style: TextStyle(
                            fontWeight: .w600,
                            fontSize: 14,
                            color: Color(0xff030303),
                          ),
                        ),

                        Text(
                          ' Privacy Policy.',
                          style: TextStyle(
                            fontWeight: .w600,
                            fontSize: 14,
                            color: Color(0xff53B175),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),

                    InkWell(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 24.5),
                        decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Center(
                          child: Text(
                            'sign up',
                            style: TextStyle(
                              color: Color(0xffFFF9FF),
                              fontWeight: .w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class formKey {
  static get currentState => null;
}
