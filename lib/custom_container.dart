import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const CustomContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      child: child,
    );
  }
}
