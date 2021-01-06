import 'package:flutter/material.dart';

class CarouselDot extends StatelessWidget {
  const CarouselDot({
    Key key,
    this.isActive,
    this.color,
  }) : super(key: key);

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    double size = isActive ? 10.0 : 5.0;
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.transparent : this.color,
        border: Border.all(color: this.color, width: 1.0),
      ),
    );
  }
}
