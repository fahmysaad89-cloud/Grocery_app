import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';
import 'package:gorcery_app/screens/widges/product_detail.dart';
import 'package:gorcery_app/screens/widges/product_image.dart';
import 'package:gorcery_app/screens/widges/product_info.dart';
import 'package:gorcery_app/screens/widges/quantity_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  static const Color kPrimaryGreen = Color(0xff53B175);
  int quantity = 1;
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // الصورة + أزرار الرجوع والمشاركة
            ProductImage(
              product: widget.product,
              onBack: () {
                Navigator.pop(context);
              },
              onShare: () {},
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    //favorite + اسم المنتج + الوصف
                    ProductInfo(
                      product: widget.product,
                      isFavourite: isFavourite,
                      onFavourite: () {
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                    ),
                    const SizedBox(height: 30.14),
                    // السعر + الكميه
                    QuantityWidget(
                      quantity: quantity,
                      price: widget.product.price,
                      onMinus: () {
                        if (quantity > 1) {
                          setState(() {
                            quantity--;
                          });
                        }
                      },
                      onPlus: () {
                        setState(() {
                          quantity++;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    // Product Detail + Nutritions + Review
                    ProductDetail(),
                    const Divider(),

                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryGreen,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Add To Basket',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
