


import 'package:flutter/material.dart';

class TypeText extends StatelessWidget {
  const TypeText({
    super.key, required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return Text(type,style: TextStyle(color: Colors.grey,fontSize: 16),);
  }
}