


import 'package:flutter/material.dart';

class GreyLine extends StatelessWidget {
  const GreyLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
       height: 0.5,
       decoration: BoxDecoration(
         color: Colors.grey
       ),
                );
  }
}