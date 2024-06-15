

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CloseAccount extends StatelessWidget {
  const CloseAccount({super.key,});



  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: 900,
        width: double.infinity,
        decoration: BoxDecoration(
          color:  Color.fromARGB(255, 11, 15, 24),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(25))
        ),
        padding: EdgeInsets.symmetric( vertical: 10),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                
              ),
              height: 8,
              width: 40,

            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Close Account',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500 ),),
                  MaterialButton(
                    child: Icon(Icons.close, color: Colors.white,),
                    onPressed: ()=> Navigator.of(context).pop(),
                    
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10,),

            Container(
                width: double.infinity,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),


              const SizedBox(height: 35,),

              Text('Are you sure?' ,style: TextStyle(
                color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700,
              ),),

              const SizedBox(height: 20,),

              const Text(
                'Deleting your account will result in the \n permanent loss of your data, settings, and \n associated information',
                textAlign: TextAlign.center,

                style: TextStyle(color: Colors.grey, ),  
              ),
              
             const SizedBox(height: 25,),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfff6285f),  
                    borderRadius: BorderRadius.circular(5),
                  ),
      
                  child: Center(child: Text('Close Account',style: TextStyle(color: Color.fromARGB(255, 11, 15, 24), fontWeight: FontWeight.w600,fontSize: 14),)),
                ),
             ),


             const SizedBox(height: 15,),

           


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.transparent, // Transparent background
                              border: Border.all(
                                color: Colors.grey, // White border color
                                width: 1, // Border width
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text('Cancel',style: TextStyle(color: Colors.white),),
                            ),
                          ),
              ),




           
           
          ],
        ),
      ),
    );
  }
}