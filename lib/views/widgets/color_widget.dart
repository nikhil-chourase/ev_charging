


import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key, required this.text, required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
        child: Center(
          child: Text(
            text,
           style: TextStyle(
            color: Color.fromARGB(255, 11, 15, 24),
            fontWeight: FontWeight.bold
           ),
           ),
        ),
      ),
    );
  }
}
