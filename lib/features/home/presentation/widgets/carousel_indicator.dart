import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const CarouselIndicator({
    Key? key,
    required this.count,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        count,
        (index) => Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(left: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex
                ? Colors.white
                : Colors.white.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
} 