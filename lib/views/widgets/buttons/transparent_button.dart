



import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  TransparentButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.white, width: 1),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ), 
        ),
    );
  }
}