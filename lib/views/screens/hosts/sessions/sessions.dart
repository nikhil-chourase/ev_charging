

import 'package:flutter/material.dart';

class SessionsScreen extends StatelessWidget {
  SessionsScreen({super.key});


  List<String> texts = [
    'Apart Hotel | 21kW','Glacis Charger 3','Hôtel de Ville'
  ];

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        title: Text('Sessions',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.white,),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: size.height/40,),
            Container(
              width: size.width,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 21, 30, 43),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width/2.3,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 44, 50, 59),
                  ),
                  child: Center(
                    child: Text(
                      'Club Sessions',
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Text('Guest Sessions',style: TextStyle(color: Colors.grey),),
                  ),
                ],
              ),
            ),

            SizedBox(height: size.height/20,),

            Expanded(
              child: ListView.builder(
                itemCount: texts.length,
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
                              texts[index],
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
                              '8.12 kW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                    
                            Text(
                              '30 min',
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