import 'package:flutter/material.dart';
import 'package:gorcery_app/gorcery_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}

class _formkey {
  static Null get currentState => null;
}
