

import 'package:evcharging/controllers/user_notifier.dart';
import 'package:evcharging/views/widgets/color_widget.dart';
import 'package:evcharging/views/widgets/home_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final user = ref.watch(userProvider);

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        title: Text('Welcome ${user!.name} ✧˖°',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: FaIcon(Icons.notifications_none_outlined,color: Colors.white,),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 37, 52),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
        
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Text('Hôtel de Ville', style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),),
                      FaIcon(Icons.settings_outlined, color: Colors.grey,size: 25,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Pl. de l\'Hôtel de Ville, Paris • 1.4 km',
                       style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type 2 • 30kW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),

                      ColorWidget(text: 'Charging', color: Color(0xffffdf6e), ),
              
                    ],
                  ),
                ],              
              ),
            ),

            SizedBox(height: 30,),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeTile(size: size, value: '53', info: 'Sessions', ),
                    HomeTile(size: size, value: '12Kg', info: 'Co2 Saved', ),

                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeTile(size: size, value: 'ϟ 20', info: 'Charge Miles', ),
                    HomeTile(size: size, value: '€ 120', info: 'Earnings', ),


                  ],
                ),
              ],
            ),
          ],
        ),
      ),

    );

  }
}



