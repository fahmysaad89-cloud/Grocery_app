import 'package:flutter/material.dart';
import 'package:gorcery_app/models/cart_item_model.dart';
import 'package:gorcery_app/screens/widges/cart_item_widget.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  static const Color kPrimaryGreen = Color(0xff53B175);

  List<CartItemModel> cartItems = [
    CartItemModel(
      titel: 'Bell Pepper Red',
      discripion: '1kg, Price',
      image: 'assets/images/Bell Pepper Red.png',
      price: 4.99,
    ),
    CartItemModel(
      titel: 'Egg Chicken Red',
      discripion: '4pcs, Price',
      image: 'assets/images/Red Egg.png',
      price: 1.99,
    ),
    CartItemModel(
      titel: 'Organic Bananas',
      discripion: '12kg, Price',
      image: 'assets/icons/pananna.png',
      price: 3.00,
    ),
    CartItemModel(
      titel: 'Ginger',
      discripion: '250gm, Price',
      image: 'assets/images/Ginger.png',
      price: 2.99,
    ),
  ];

  double get total =>
      cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // const SizedBox(height: 16),
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),
            const SizedBox(height: 32.17),
            Expanded(
              child: cartItems.isEmpty
                  ? const Center(
                      child: Text(
                        'Your cart is empty',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: cartItems.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return const Divider(
                            height: 2,
                            color: Color(0xffE2E2E2),
                          );
                        }
                        final item = cartItems[index - 1];
                        return Column(
                          children: [
                            const SizedBox(height: 13),
                            CartItemWidget(
                              item: item,
                              onRemove: () {
                                setState(() => cartItems.remove(item));
                              },
                              onIncrement: () {
                                setState(() => item.quantity++);
                              },
                              onDecrement: () {
                                setState(() {
                                  if (item.quantity > 1) item.quantity--;
                                });
                              },
                            ),

                            const SizedBox(height: 13),
                            const Divider(height: 1, color: Color(0xffE2E2E2)),
                          ],
                        );
                      },
                    ),
            ),
            if (cartItems.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                    ),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Container(
                            // padding: const EdgeInsets.symmetric(
                            //   // horizontal: 14,
                            //   // vertical: 8,
                            // ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$${total.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'Go to Checkout',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.18),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '\$${total.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            SizedBox(height: 15.45),
          ],
        ),
      ),
    );
  }
}
