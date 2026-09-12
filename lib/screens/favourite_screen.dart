import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';
import 'package:gorcery_app/screens/widges/favourite_item.dart';

class favouritescreen extends StatelessWidget {
  const favouritescreen({super.key});

  static const Color kPrimaryGreen = Color(0xff53B175);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Favourite',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),
            const SizedBox(height: 32.17),
            Expanded(
              child: ListView.builder(
                itemCount: favouriteitems.length + 1,
                itemBuilder: (context, index) {
                  if (index == favouriteitems.length) {
                    return const Divider(height: 1, color: Color(0xffE2E2E2));
                  }
                  return Column(
                    children: [
                      const Divider(height: 19, color: Color(0xffE2E2E2)),
                      // const SizedBox(height: 10),
                      favouriteitem(product: favouriteitems[index]),
                      // const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                width: 364,
                height: 67,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryGreen,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Add All To Cart',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.45),
          ],
        ),
      ),
    );
  }
}

List<ProductModel> favouriteitems = [
  ProductModel(
    titel: 'Sprite Can',
    discripion: '325ml, Price',
    image: 'assets/images/Sprite.png',
    price: 1.50,
  ),
  ProductModel(
    titel: 'Diet Coke',
    discripion: '355ml, Price',
    image: 'assets/images/Diet.png',
    price: 1.99,
  ),
  ProductModel(
    titel: 'Apple & Grape Juice',
    discripion: '2L, Price',
    image: 'assets/images/Grape Juice.png',
    price: 15.50,
  ),
  ProductModel(
    titel: 'Coca Cola Can',
    discripion: '325ml, Price',
    image: 'assets/images/Coca Cola.png',
    price: 4.99,
  ),
  ProductModel(
    titel: 'Pepsi Can',
    discripion: '330ml, Price',
    image: 'assets/images/Pepsi.png',
    price: 4.99,
  ),
];
