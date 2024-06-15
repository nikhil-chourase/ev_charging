

import 'dart:ffi';

import 'package:evcharging/views/widgets/buttons/white_button2.dart';
import 'package:evcharging/views/widgets/grey_line.dart';
import 'package:flutter/material.dart';

class ChargingBill extends StatelessWidget {
  const ChargingBill({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Bella Costiamo Charger',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        ),
      ),
      

      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height/5,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
            
                  ],
                ),
            
               
            
                Positioned(
                  top: size.height/30,
                  left: size.width/15,
                  right: size.width/15,
            
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: size.height/1.1,
                      width: size.width/1.3,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 15, 24),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        
                      ),
                      padding: EdgeInsets.only(left:  10,right: 10,top: 20),
                      child: Column(
                        children: [
                          Image.asset('images/charge_design.png'),

                          SizedBox(height: size.height/30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Charging Complete!',style: TextStyle(color: Colors.white70),),
                              Text('Dec 17, 9:00 AM',style: TextStyle(color: Colors.grey),),
                            ],
                          ),


                          SizedBox(height: size.height/20,),

                          Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,                           
                            children: [
                              Text('Transaction ID',style: TextStyle(color: Colors.grey)),
                              Text('000985643XXX',style: TextStyle(color: Colors.white70))
                            ],
                          ),

                          const SizedBox(height: 20,),

                          GreyLine(),

                          const SizedBox(height: 20,),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,                           
                            children: [
                              Text('Consumption',style: TextStyle(color: Colors.grey)),
                              Text('08.12kWh',style: TextStyle(color: Colors.white70))
                            ],
                          ),

                          const SizedBox(height: 20,),

                          GreyLine(),

                           const SizedBox(height: 20,),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,                           
                            children: [
                              Text('Charging cost',style: TextStyle(color: Colors.grey)),
                              Text('€00.00',style: TextStyle(color: Colors.white70))
                            ],
                          ),

                          const SizedBox(height: 20,),
                          GreyLine(),

                          const SizedBox(height: 20,),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,                           
                            children: [
                              Text('Total amount',style: TextStyle(color: Colors.grey)),
                              Text('€00.00',style: TextStyle(color: Colors.white70))
                            ],
                          ),

                          const SizedBox(height: 20,),

                           GreyLine(),


                        ],
                      ),
                    ),
                  ),
                ),
            
                
              ],
              
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: size.width/15,vertical: size.height/20),
              child: WhiteButton2(text: 'Download Invoice'),
            ),
          ),
        ],
      ),
    );
  }
}