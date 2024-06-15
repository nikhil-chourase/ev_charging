


import 'package:flutter/material.dart';

class WhiteButton2 extends StatelessWidget {
  const WhiteButton2({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,  
        borderRadius: BorderRadius.circular(5),
      ),
      
      child: Center(
        child: Text(text,style: TextStyle(color: Color.fromARGB(255, 11, 15, 24), fontWeight: FontWeight.w600,fontSize: 14),),
      ),
    );
  }
}