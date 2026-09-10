import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';

class ProductInfo extends StatelessWidget {
  final ProductModel product;
  final bool isFavourite;
  final VoidCallback onFavourite;
  const ProductInfo({
    super.key,
    required this.product,
    required this.isFavourite,
    required this.onFavourite,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.titel,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                product.discripion,
                style: const TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
              ),
            ],
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: onFavourite,
          icon: Icon(
            isFavourite ? Icons.favorite : Icons.favorite_border,
            size: 28,
            color: isFavourite
                ? const Color(0xff53B175)
                : const Color(0xff181725),
          ),
        ),
      ],
    );
  }
}
