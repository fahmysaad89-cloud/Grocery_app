import 'package:flutter/material.dart';
import 'package:gorcery_app/models/product_model.dart';

class ProductImage extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onBack;
  final VoidCallback onShare;
  const ProductImage({
    super.key,
    required this.product,
    required this.onBack,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 413.60308837890625,
          height: 371.4407958984375,
          decoration: const BoxDecoration(
            color: Color(0xffF2F3F2),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
          ),
          child: Center(
            child: Image.asset(
              product.image,
              width: 329.33648681640625,
              height: 199.18280029296875,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_outlined, size: 80);
              },
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 20,
          child: _RoundIconButton(
            icon: Icons.arrow_back_ios_new,
            onTap: () => Navigator.pop(context),
          ),
        ),
        Positioned(
          top: 15,
          right: 20,
          child: _RoundIconButton(icon: Icons.ios_share_outlined, onTap: () {}),
        ),
      ],
    );
  }
}

class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _RoundIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: const Color(0xff181725)),
      ),
    );
  }
}
