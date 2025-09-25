import 'package:flutter/material.dart';

class InchCard extends StatelessWidget {
  final int inch;
  final double price;
  final bool isSelected;
  final VoidCallback onTap;

  const InchCard({
    super.key,
    required this.inch,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
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
            child: Text(
              "\$$price",
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.redAccent : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 6),
          Text("$inch inch",
              style: const TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
