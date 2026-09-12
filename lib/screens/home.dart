import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/account_screen.dart';
import 'package:gorcery_app/screens/cart_screen.dart';
import 'package:gorcery_app/screens/explore_screen.dart';
import 'package:gorcery_app/screens/favourite_screen.dart';
import 'package:gorcery_app/screens/shop_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  List<Widget> sccrens = [
    ShopScreen(),
    ExploreScreen(),
    cartscreen(),
    favouritescreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: sccrens[currentindex]),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        selectedLabelStyle: TextStyle(fontWeight: .w600, fontSize: 16),
        unselectedLabelStyle: TextStyle(fontWeight: .bold, fontSize: 12),
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff53B175),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'shop'),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined),
            label: 'explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
