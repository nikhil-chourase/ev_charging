
import 'package:flutter/material.dart';

class CMiles extends StatelessWidget {
  CMiles({super.key});


  List<String> prices = [
    '25.78','150.00','25.78','€150.00'
  ];

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            SizedBox(height: size.height/15,),

            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/card.png',)),
                      ),
                      width: double.infinity,
                      height: size.height/4,
                    ),
                    Positioned(
                      top: size.height/25,
                      left: size.width/10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('€158.00',style: TextStyle(color: Colors.white,fontSize: 20,),),
                              Text('Available to spend',style: TextStyle(color: Colors.white30),)
                            ],
                          ),
                          SizedBox(height: size.height/20,),
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Earnings this month',style: TextStyle(color: Colors.white12,fontSize: 12),),
                              Text('€158.00',style: TextStyle(color: Colors.white,fontSize: 14,),),


                            ],

                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: size.width/10,
                      top: size.width/10,
                      child: Image.asset('images/card_ds.png')),

                  ],
                ),
                Positioned(
                  bottom: size.height/40,
                  right: size.width/20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 26, 37, 52),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: size.width/3,
                    height: size.height/18,
                    child: Center(
                      child: Text(
                        'Request Transfer',
                        style: TextStyle(color: Colors.white70),
                        ),
                      ),
                  ),

                ),
              ],
            ),



            SizedBox(height: size.height/20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(

                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),

              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: prices.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Charging Sessions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                    
                            Text(
                              'Today, 1:15 PM',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '€${prices[index]}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                    
                            Text(
                              '8.12 kW',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }, 
              ),
            ),



          ],
        ),
      ),
    );
  }
}