import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),

        _ExpandableSection(
          title: 'Product Detail',
          initiallyExpanded: true,
          child: Text(
            'Apples are nutritious. Apples may be good for '
            'weight loss. Apples may be good for your heart, '
            'as part of a healthy and varied diet.',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff7C7C7C),
              height: 1.5,
            ),
          ),
        ),
        const Divider(),

        _ExpandableSection(
          title: 'Nutritions',
          trailingText: '100gr',
          child: const Text(
            'Calories 52, Carbs 14g, Fiber 2.4g, Sugar 10g, '
            'Protein 0.3g, Vitamin C 8% of the RDI.',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff7C7C7C),
              height: 1.5,
            ),
          ),
        ),
        const Divider(),

        _ExpandableSection(
          title: 'Review',
          child: Row(
            children: List.generate(
              5,
              (index) =>
                  const Icon(Icons.star, color: Color(0xffF3603F), size: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class _ExpandableSection extends StatelessWidget {
  final String title;
  final String? trailingText;
  final Widget child;
  final bool initiallyExpanded;

  const _ExpandableSection({
    required this.title,
    required this.child,
    this.trailingText,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.only(bottom: 16),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff181725),
          ),
        ),
        trailing: trailingText != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    trailingText!,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, size: 20),
                ],
              )
            : null,
        children: [Align(alignment: Alignment.centerLeft, child: child)],
      ),
    );
  }
}
