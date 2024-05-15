import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Explorer/BeveragesScreen.dart';
import 'package:grocery_app/constants.dart';

import 'Category.dart';
import '../Title.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: MTitle(title: 'Find Products'),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 180,
                    crossAxisCount: 2),
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, index) {
                  return CategoryCard(category: categories[index]);
                }),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final Category category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => BeveragesScreen())),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: category.color),
            color: category.color.withOpacity(0.15),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Image.asset(
                '$kimage/${category.name}.png',
                height: 100,
                width: 175,
              ),
            ),
            Text(
              maxLines: 2,
              category.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Poppins', fontSize: 16, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
