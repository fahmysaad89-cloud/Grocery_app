import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/Order_accepted_screen.dart';

class CheckoutSheet extends StatelessWidget {
  final double total;
  const CheckoutSheet({super.key, required this.total});

  static const Color kPrimaryGreen = Color(0xff53B175);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Row(
            children: [
              const Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 22),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Divider(height: 1, color: Color(0xffE2E2E2B2)),
          const SizedBox(height: 10),
          _CheckoutRow(
            label: 'Delivery',
            trailingText: 'Select Method',

            boldLabel: true,
          ),
          const SizedBox(height: 10),
          const Divider(height: 1, color: Color(0xffE2E2E2B2)),
          const SizedBox(height: 10),
          _CheckoutRow(
            label: 'Payment',
            trailingWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 28,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: const LinearGradient(
                      colors: [Color(0xff2E5AAC), Color(0xffE84545)],
                    ),
                  ),
                  child: const Icon(
                    Icons.credit_card,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                  fontWeight: .bold,
                  color: Color(0xff181725),
                ),
                // const SizedBox(height: 20),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(height: 1, color: Color(0xffE2E2E2B2)),
          const SizedBox(height: 10),

          _CheckoutRow(
            label: 'Promo Code',
            trailingText: 'Pick discount',
            boldLabel: true,
          ),
          const SizedBox(height: 10),
          const Divider(height: 1, color: Color(0xffE2E2E2B2)),
          const SizedBox(height: 10),
          _CheckoutRow(
            label: 'Total Cost',
            trailingText: '\$${total.toStringAsFixed(2)}',
            boldLabel: true,
          ),
          const SizedBox(height: 10),

          const Divider(height: 1, color: Color(0xffE2E2E2B2)),

          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff7C7C7C),
                height: 1.5,
              ),
              children: [
                TextSpan(text: 'By placing an order you agree to our '),
                TextSpan(
                  text: '\nTerms And Conditions',
                  style: TextStyle(
                    color: kPrimaryGreen,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 67,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderAcceptedScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryGreen,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Place Order',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _CheckoutRow extends StatelessWidget {
  final String label;
  final String? trailingText;
  final Widget? trailingWidget;
  final bool boldLabel;

  const _CheckoutRow({
    required this.label,
    this.trailingText,
    this.trailingWidget,
    this.boldLabel = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: boldLabel ? FontWeight.w700 : FontWeight.w500,
              color: const Color(0xff181725),
            ),
          ),
          const Spacer(),
          if (trailingWidget != null)
            trailingWidget!
          else
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  trailingText ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: boldLabel ? FontWeight.w700 : FontWeight.w500,
                    color: boldLabel
                        ? const Color(0xff181725)
                        : const Color(0xff7C7C7C),
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                  color: Color(0xff7C7C7C),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
