import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  final int quantity;
  final double price;
  final VoidCallback onMinus;
  final VoidCallback onPlus;
  const QuantityWidget({
    super.key,
    required this.quantity,
    required this.price,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _QtyButton(icon: Icons.remove, onTap: onMinus),
        const SizedBox(width: 16),
        Text(
          '$quantity',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 16),
        _QtyButton(icon: Icons.add, onTap: onPlus),

        const Spacer(),
        Text(
          '\$${(price * quantity).toStringAsFixed(2)}',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color(0xff181725),
          ),
        ),
      ],
    );
  }
}

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _QtyButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          color: const Color(0xffF2F3F2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 18, color: const Color(0xff181725)),
      ),
    );
  }
}
