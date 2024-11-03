import 'package:flutter/material.dart';

class CategoryItem {
  final String title;
  final IconData icon;

  CategoryItem({required this.title, required this.icon});
}

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);

  final List<CategoryItem> categories = [
    CategoryItem(title: 'Icons', icon: Icons.star),
    CategoryItem(title: 'Rooms', icon: Icons.bed),
    CategoryItem(title: 'Castles', icon: Icons.castle),
    CategoryItem(title: 'Amazing pools', icon: Icons.pool),
    CategoryItem(title: 'Islands', icon: Icons.landscape),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Column(
              children: [
                Icon(
                  categories[index].icon,
                  size: 28,
                  color: index == 0 
                      ? Theme.of(context).primaryColor 
                      : Colors.grey,
                ),
                const SizedBox(height: 8),
                Text(
                  categories[index].title,
                  style: TextStyle(
                    fontSize: 12,
                    color: index == 0 
                        ? Theme.of(context).primaryColor 
                        : Colors.grey,
                    fontWeight: index == 0 
                        ? FontWeight.bold 
                        : FontWeight.normal,
                  ),
                ),
                if (index == 0)
                  Container(
                    height: 2,
                    width: 16,
                    margin: const EdgeInsets.only(top: 8),
                    color: Theme.of(context).primaryColor,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
