import 'package:flutter/material.dart';

class ProductCategoryChip extends StatelessWidget {
  final String category;
  final Color textColor;
  final Color bgColor;
  ProductCategoryChip({this.category, this.textColor, this.bgColor});
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        category,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: bgColor,
    );
  }
}
