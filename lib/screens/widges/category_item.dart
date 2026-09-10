import 'package:flutter/material.dart';
import 'package:gorcery_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 174.5,
      // height: 189.10609436035156,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Center(
                child: Image.asset(
                  category.image,
                  width: 111.37899017333984,
                  height: 74.90237426757812,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.shopping_basket_outlined,
                    size: 30,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 6),
          Text(
            category.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff181725),
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
