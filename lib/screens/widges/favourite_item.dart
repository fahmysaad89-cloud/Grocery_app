import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';

class favouriteitem extends StatelessWidget {
  final ProductModel product;
  const favouriteitem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                product.image,
                width: 65,
                height: 65,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 72,
                  height: 72,
                  color: const Color(0xffF2F3F2),
                  child: const Icon(Icons.image_outlined),
                ),
              ),
            ),
            const SizedBox(width: 22),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.titel,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.discripion,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '\$${product.price}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff181725),
              ),
            ),
            const SizedBox(width: 20),
            const Icon(
              Icons.chevron_right,
              size: 28,
              fontWeight: .bold,
              color: Color(0xff7C7C7C),
            ),
          ],
        ),
      ),
    );
  }
}
