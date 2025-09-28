import 'package:flutter/material.dart';

class InchCard extends StatelessWidget {
  final int inch;
  final double price;
  final bool isSelected;
  final ValueChanged<double> onSelected; // сонгосон үнийг буцаана

  const InchCard({
    super.key,
    required this.inch,
    required this.price,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(price);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.redAccent : Colors.grey.shade400,
                width: 1,
              ),
              color: isSelected
                  ? Colors.redAccent.withOpacity(0.2)
                  : Colors.transparent,
            ),
          ),SizedBox(height: 6),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: isSelected ? Colors.redAccent : Colors.grey,),
          ),
          SizedBox(height: 6),
          Text(
            "$inch inch",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
