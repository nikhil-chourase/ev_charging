


import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    super.key,
    required this.size,required this.icon1, required this.icon2, required this.option1, required this.option2, required this.onTap1,  required this.onTap2,
  });

  final Size size;
  final IconData icon1;
  final IconData icon2;
  final String option1;
  final String option2;
  final VoidCallback onTap1;
  final VoidCallback onTap2;

  @override
  Widget build(BuildContext context) {
    return Container(
           decoration: BoxDecoration(
            color: Color.fromARGB(255, 26, 37, 52),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          height: 140,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
               InkWell(
                 onTap: onTap1,
                 child: AccountTile(
                  size: size,
                  icon: icon1, 
                  type: option1,
                               
                               ),
               ),

              Container(
                width: double.infinity,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),


                InkWell(
                  onTap: onTap2,

                  child: AccountTile(
                  size: size,
                  icon: icon2, 
                  type: option2,
                                
                                ),
                ),

              
    
            ],
          ),
        );
  }
}



class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.size, required this.icon, required this.type,
  });

  final Size size;
  final IconData icon;
  final String type;

 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             Icon(icon,color: Colors.white,size: 25,),
             const SizedBox(width: 10,),
        
             Text(type,style: TextStyle(
              color: Colors.white,
        
             ),),
        
           ],
         ),
         Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,),
        ],
      ),
    );
  }
}