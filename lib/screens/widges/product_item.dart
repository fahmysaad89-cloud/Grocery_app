import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';
import 'package:gorcery_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Container(
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
            Expanded(child: Center(child: Image.asset(product.image))),
            const SizedBox(height: 33.9),
            Text(
              product.titel,
              style: TextStyle(
                color: Color(0xff181725),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              product.discripion,
              style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
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
    );
  }
}
