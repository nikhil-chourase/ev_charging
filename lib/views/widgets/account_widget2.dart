


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class AccountWidget2 extends StatelessWidget {
  const AccountWidget2({
    super.key,
    required this.size, required this.icon, required this.option,
  });

  final Size size;
  final Icon icon;
  final Text option;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height/15,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 26, 37, 52),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
    
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             children: [
               icon,
               const SizedBox(width: 10,),
              option,
             ],
           ),
           Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,),
          ],
      ),
    );
  }
}