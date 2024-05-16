import 'package:flutter/material.dart';

final List<Category> categories = [
  const Category(name: 'Fresh Fruits & Vegetable', color: Color(0xFF53B175)),
  const Category(name: 'Cooking Oil & Ghee', color: Color(0xFFF8A44C)),
  const Category(name: 'Meat & Fish', color: Color(0xFFF7A593)),
  const Category(name: 'Bakery & Snacks', color: Color(0xFFD3B0E0)),
  const Category(name: 'Dairy & Eggs', color: Color(0xFFFDE598)),
  const Category(name: 'Beverages', color: Color(0xFFB7DFF5)),
  const Category(name: 'Bakery & Snacks', color: Color(0xFFD3B0E0)),
  const Category(name: 'Meat & Fish', color: Color(0xFFF7A593)),
];

class Category {
  final String name;
  final Color color;

  const Category({
    required this.name,
    required this.color,
  });
}
