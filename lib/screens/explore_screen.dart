import 'package:flutter/material.dart';
import 'package:gorcery_app/models/category_model.dart';
import 'package:gorcery_app/screens/widges/category_item.dart';
import 'package:gorcery_app/screens/widges/shop_search_item.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Find Products',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff181725),
            ),
          ),
          const SizedBox(height: 20),
          const ShopSearchItem(),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.92,
              ),
              itemBuilder: (context, index) {
                return CategoryItem(category: categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<CategoryModel> categories = [
  CategoryModel(
    title: 'Fresh Fruits & Vegetable',
    image: 'assets/icons/frash Fruits.png',
    color: const Color(0xffD3F1DF),
  ),
  CategoryModel(
    title: 'Cooking Oil & Ghee',
    image: 'assets/icons/cooking oil.png',
    color: const Color(0xffFDE8CF),
  ),
  CategoryModel(
    title: 'Meat & Fish',
    image: 'assets/icons/meat.png',
    color: const Color(0xffF7A593),
  ),
  CategoryModel(
    title: 'Bakery & Snacks',
    image: 'assets/icons/bakery.png',
    color: const Color(0xffD3B0E0),
  ),
  CategoryModel(
    title: 'Dairy & Eggs',
    image: 'assets/icons/dairy.png',
    color: const Color(0xffFCF1CD),
  ),
  CategoryModel(
    title: 'Beverages',
    image: 'assets/icons/beverages.png',
    color: const Color(0xffDCEEFB),
  ),
];
