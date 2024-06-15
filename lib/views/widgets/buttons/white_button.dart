




import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    super.key, required this.text, required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
    
      child: Container(
       height: 50,
       width: double.infinity,
       decoration: BoxDecoration(
         color: Colors.white,  
         borderRadius: BorderRadius.circular(5),
       ),
      
       child: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             FaIcon(icon),
             SizedBox(width: 10,),
              Text(text,style: TextStyle(color: Color.fromARGB(255, 11, 15, 24), fontWeight: FontWeight.w600,fontSize: 14),)
           ],
         ),
       ),
     ),
      onPressed: (){
       
     },
    
    );
  }
}




