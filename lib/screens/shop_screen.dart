import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/widges/home_slider.dart';
import 'package:gorcery_app/screens/widges/shop_search_item.dart';

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
          ShopSearchItem(),
          SizedBox(height: 20),
          HomeSlider(),
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive Offer',
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 24,
                  fontWeight: .w600,
                ),
              ),

              Text(
                'See all',
                style: TextStyle(
                  color: Color(0xff53B175),
                  fontSize: 16,
                  fontWeight: .w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 173.3249969482422,
            height: 256,
            padding: EdgeInsets.only(top: 34, left: 15, right: 14, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xffFFFFFF),
              border: BoxBorder.all(color: Color(0xffE2E2E2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/icons/apple.png')),
                SizedBox(height: 33.9),
                Text(
                  'Red Apple',
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 16,
                    fontWeight: .w600,
                  ),
                ),
                Text(
                  '1kg, Priceg',
                  style: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 14,
                    fontWeight: .w400,
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$4.99',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: .w600,
                        color: Color(0xff181725),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14.33),
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 17),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
