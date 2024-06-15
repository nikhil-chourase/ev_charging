

import 'package:evcharging/views/screens/onboarding/auth/auth_screen.dart';
import 'package:evcharging/views/widgets/buttons/white_button2.dart';
import 'package:flutter/material.dart';

class UserMode extends StatefulWidget {
  const UserMode({super.key});

  static const String route = '/usermode';

  @override
  State<UserMode> createState() => _UserModeState();
}

class _UserModeState extends State<UserMode> {

  String selectedTile = 'Yes';


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: Icon(Icons.arrow_back, color: Colors.white,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              'Are you a host',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
             ),

             SizedBox(height: 10,),

             Text(
              'Please select the option that best \n describes you',
              style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w100),
             ),

             SizedBox(height: size.height/10),


             HostTile(text: 'Yes', isSelected: selectedTile == 'Yes',
              onTap: () { 
                setState(() {
                  selectedTile = 'Yes';
                });               
               },
              ),

             SizedBox(height: 20,),

             HostTile(text: 'No', isSelected: selectedTile == 'No',
              onTap: () { 
                setState(() {
                  selectedTile = 'No';
                });
               },),

             SizedBox(height: size.height/5,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text.rich(
                  textAlign: TextAlign.center,
                        TextSpan(
                            text: 'By starting my Host application, I agree to El-Monde’s \n ', // Default style for this text
                            style: TextStyle(color: Colors.grey,fontSize: 12),
                             // Base style
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Service Facilitation Terms ',
                                style: TextStyle(color: Colors.white),
                              ),
                              TextSpan(
                                text: 'to access the sale of \n',
                                style: TextStyle(color: Colors.grey),
                              ),
                 
                               TextSpan(
                                text: 'Charging Services',
                                style: TextStyle(color: Colors.grey),
                              ),
                 
                            ],
                          ),
                    ),
               ],
             ),


             SizedBox(height: 20,),

             GestureDetector(
              onTap: (){
                
                Navigator.of(context).pushReplacementNamed(AuthScreen.route);

              },
              child: WhiteButton2(text: 'Continue')),

             
          ],
        ),
      ),
    );
  }
}

class HostTile extends StatelessWidget {
  const HostTile({
    super.key, required this.text, required this.isSelected, required this.onTap,
  });

  final String text;
   final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
           height: 60,
           width: double.infinity,
           decoration: BoxDecoration(
             color: Colors.transparent, // Transparent background
             border: Border.all(
               color: isSelected ? Colors.blue : Colors.grey, // White border color
               width: 0.5, // Border width
             ),
             borderRadius: BorderRadius.circular(10),
           ),
           padding: const EdgeInsets.symmetric(horizontal: 15),
           
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
      
                   Row(
                     children: [  
                       Text(text,style: TextStyle(color: Colors.white,fontSize: 16),),
                     ],
                   ),
      
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                        color: isSelected ? Colors.blue : Colors.grey,
                        width: 0.5 
                      ),
                    ),
                    
                     height: 20,
                     width: 20,
                     padding: EdgeInsets.all(5),

                     child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.transparent,
                       borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                        color: Colors.transparent,
                        width: 0.5 
                      ),
                    ),
                      
                     ),
                     
                   ),
      
                 ],
           ),
      
      
      ),
    );
  }
}