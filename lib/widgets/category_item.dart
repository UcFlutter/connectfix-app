import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key});

  final List<Map<String, dynamic>> categoryItem = [
    {
      'icon': Icon(
        Icons.cleaning_services_outlined,
        size: 32,
        color: Colors.white,
      ),
      'title': 'Cleaning',
      'color': Colors.green,
    },
    {
      'icon': Icon(
        Icons.plumbing,
        size: 32,
        color: Colors.white,
      ),
      'title': 'Plumbing',
      'color': Colors.yellow,
    },
    {
      'icon': Icon(
        Icons.lightbulb,
        size: 32,
        color: Colors.white,
      ),
      'title': 'Electrical',
      'color': Colors.red,
    },
    {
      'icon': Icon(
        Icons.format_paint,
        size: 32,
        color: Colors.white,
      ),
      'title': 'Painting',
      'color': const Color(0xFF6169D2),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: categoryItem
              .map(
                (e) => Container(
                  width: 83,
                  height: 83,
                  child: Card(
                    color: e['color'],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        e['icon'],
                        Text(
                          e['title'],
                          // textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
