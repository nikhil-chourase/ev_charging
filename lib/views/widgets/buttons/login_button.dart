



import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key, required this.image, required this.text,
  });

  final String image;

  final String text;

  @override
  Widget build(BuildContext context) {

    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,  
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade600,width: 0.5),
        ),
        
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 30,
              ),
              SizedBox(width: 10,),
              Text(text,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 14),)
            ],
          ),
        ),
      ),
    );
  }
}