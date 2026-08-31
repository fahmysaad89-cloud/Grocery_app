import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';
import 'package:gorcery_app/screens/widges/home_slider.dart';
import 'package:gorcery_app/screens/widges/product_item.dart';
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
          const SizedBox(height: 7.6),
          const Row(
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
          const SizedBox(height: 20),
          const ShopSearchItem(),
          const SizedBox(height: 20),
          const HomeSlider(),
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Exclusive Offer',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 24,
                    fontWeight: .w600,
                  ),
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
          const SizedBox(height: 20),

          SizedBox(
            height: 256,
            child: ListView.separated(
              itemBuilder: (context, index) {
                print(index);
                return ProductItem(product: products[index]);
              },
              separatorBuilder: (context, index) => SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
            ),
          ),
        ],
      ),
    );
  }
}

List<ProductModel> products = [
  ProductModel(
    discripion: '7pcs, Priceg',
    image: 'assets/icons/pananna.png',
    price: 2.4,
    titel: 'Organic Bananas',
  ),
  ProductModel(
    discripion: '1kg, Priceg',
    image: 'assets/icons/apple.png',
    price: 4.7,
    titel: 'Red Apple',
  ),
  ProductModel(
    discripion: '1kg, Priceg',
    image: 'assets/icons/peff.png',
    price: 8.6,
    titel: 'Beef Bone',
  ),
  ProductModel(
    discripion: '1kg, Priceg',
    image: 'assets/icons/chiken.png',
    price: 9.2,
    titel: 'Broiler Chicken',
  ),
];
