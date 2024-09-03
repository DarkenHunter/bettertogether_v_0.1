import 'package:flutter/material.dart';

class box extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const box({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(colors: <Color>[]),
      ),
      width: 200,
      height: 200,
      padding: EdgeInsets.all(16),
      child: child,
    );
  }
}
