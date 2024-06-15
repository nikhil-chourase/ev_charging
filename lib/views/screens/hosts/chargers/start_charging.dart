

import 'package:evcharging/views/screens/hosts/chargers/charging_bill.dart';
import 'package:evcharging/views/widgets/grey_line.dart';
import 'package:flutter/material.dart';

class ChargingStart extends StatelessWidget {
  const ChargingStart({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        title: Text('ChargerID-001',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: Icon(Icons.settings_outlined, color: Colors.white,size: 25,)),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 80,),

            Row(

              children: [
                Column(
                  children: [
                    Text(
                      'Charging',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(

                          ),
                        )
                      ],
                    ),
                  ],

                ),

              ],

            ),

            const SizedBox(height: 10,),

             GreyLine(),

            const SizedBox(
              height: 20,
            ),

            Text.rich(
               TextSpan(
                  text: '08.12', // Default style for this text
                  style: TextStyle(fontSize: 60, color: Color.fromARGB(255, 159, 251, 196)), // Base style
                  children: <TextSpan>[
                    TextSpan(
                      text: 'kWh ',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 159, 251, 196)),
                    ),
                  ],
                ),

                ),

                const SizedBox(height: 20,),

                 GreyLine(),

                const SizedBox(height: 20,),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bella Costiamo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '€ 00.00/kWh',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_pin,color: Colors.grey,),
                        const SizedBox(width: 5,),
                        Text('Forte dei Marmi, Tuscany', style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.follow_the_signs_rounded,color: Colors.grey,),
                        const SizedBox(width: 5,),
                        Text('CCS2 • 21kW', style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),),
                      ],
                    )

                  ],
                ),

                const SizedBox(height: 20,),

              
                GreyLine(),

                const SizedBox(height: 20,),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Charging cost',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '€00.00',
                         style: TextStyle(color: Colors.white,fontSize: 16), 
                        ),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Idle Fee',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '€00.00',
                         style: TextStyle(color: Colors.white,fontSize: 16), 
                        ),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '€00.00',
                         style: TextStyle(color: Colors.white,fontSize: 16), 
                        ),
                      ],
                    ),



                  ],
                ),

                const SizedBox(height: 40,),

                InkWell(

                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChargingBill()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,  
                      borderRadius: BorderRadius.circular(5),
                    ),
                    
                    child: Center(
                      child: Text('Stop charging',style: TextStyle(color: Color.fromARGB(255, 11, 15, 24), fontWeight: FontWeight.w600,fontSize: 14),),
                    ),
                  ),
                ),




           

            
          ],
        ),
      ),
    );
  }
}
