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
        onSelected(price); // сонгогдоход үнэ буцаана
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
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.redAccent : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "$inch inch",
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
