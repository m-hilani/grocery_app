import 'package:flutter/material.dart';

final List<Category> categories = [
  Category(name: 'Fresh Fruits & Vegetable', color: const Color(0xFF53B175)),
  Category(name: 'Cooking Oil & Ghee', color: Color(0xFFF8A44C)),
  const Category(name: 'Meat & Fish', color: Color(0xFFF7A593)),
  const Category(name: 'Bakery & Snacks', color: Color(0xFFD3B0E0)),
  const Category(name: 'Dairy & Eggs', color: Color(0xFFFDE598)),
  const Category(name: 'Beverages', color: Color(0xFFB7DFF5)),
  Category(name: 'Bakery & Snacks', color: Color(0xFFD3B0E0)),
  Category(name: 'Meat & Fish', color: Color(0xFFF7A593)),
];

class Category {
  final String name;
  final Color color;

  const Category({
    required this.name,
    required this.color,
  });
}
