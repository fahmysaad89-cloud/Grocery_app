import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71),
      child: Column(
        children: [
          Center(child: Image.asset('assets/images/carot.png', width: 35)),
          SizedBox(height: 7.6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                'Dhaka, Banassre',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: .w600,
                  color: Color(0xff4C4F4D),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextFormField(
            cursorColor: Color(0xff53B175),
            onTapOutside: (v) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              fillColor: Color(0xffF2F3F2),
              filled: true,
              hintText: 'Search Store',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.search_rounded),
              ),
              prefixIconConstraints: BoxConstraints(
                maxWidth: 43,
                minHeight: 40,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
