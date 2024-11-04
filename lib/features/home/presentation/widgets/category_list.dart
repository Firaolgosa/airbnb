import 'package:flutter/material.dart';

class CategoryItem {
  final String title;
  final IconData icon;

  CategoryItem({required this.title, required this.icon});
}

class CategoryList extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onCategorySelected;
  final List<CategoryItem> categories = [
    CategoryItem(title: 'Icons', icon: Icons.star),
    CategoryItem(title: 'Rooms', icon: Icons.bed),
    CategoryItem(title: 'Castles', icon: Icons.castle),
    CategoryItem(title: 'Amazing pools', icon: Icons.pool),
    CategoryItem(title: 'Islands', icon: Icons.landscape),
  ];

  CategoryList({
    Key? key,
    required this.selectedIndex,
    required this.onCategorySelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onCategorySelected(index),
            child: Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Column(
                children: [
                  Icon(
                    categories[index].icon,
                    size: 28,
                    color: isSelected 
                        ? Theme.of(context).primaryColor 
                        : Colors.grey,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    categories[index].title,
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected 
                          ? Theme.of(context).primaryColor 
                          : Colors.grey,
                      fontWeight: isSelected 
                          ? FontWeight.bold 
                          : FontWeight.normal,
                    ),
                  ),
                  if (isSelected)
                    Container(
                      height: 2,
                      width: 16,
                      margin: const EdgeInsets.only(top: 8),
                      color: Theme.of(context).primaryColor,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
