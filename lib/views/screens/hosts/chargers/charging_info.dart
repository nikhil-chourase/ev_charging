

import 'dart:ffi';

import 'package:evcharging/models/charging_station.dart';
import 'package:evcharging/views/screens/hosts/chargers/start_charging.dart';
import 'package:evcharging/views/widgets/buttons/white_button2.dart';
import 'package:evcharging/views/widgets/color_widget.dart';
import 'package:evcharging/views/widgets/grey_line.dart';
import 'package:evcharging/views/widgets/home_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChargingInfo extends StatelessWidget {
  const ChargingInfo({super.key, required this.chargingStation});

  final ChargingStation chargingStation;


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
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
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.settings_outlined, color: Colors.white,size: 25,)),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height/120,),
            Container(
               decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 37, 52),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2022/01/16/23/15/car-6943487_1280.jpg'), 
                fit: BoxFit.cover,
              ),
              ),
               width: double.infinity,
               height: size.height/4,
            ),
            const SizedBox(height: 20,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      chargingStation.place,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.save_alt,
                      color: Colors.grey,
                      size: 20,
                      ),
                  ],
                ),
                const SizedBox(height: 15,),

                Row(
                  children: [
                    Icon(Icons.location_pin,color: Colors.grey,),
                    const SizedBox(width: 5,),
                    Text(chargingStation.address, style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),),
                  ],
                ),

                const SizedBox(height: 15,),

                Row(
                  children: [
                    FaIcon(Icons.timer_sharp,color: Colors.grey,),
                    const SizedBox(width: 5,),
                    Text('Open • 24 hours', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),),
                  ],
                ),

                const SizedBox(height: 15,),

                Row(
                  children: [
                    FaIcon(Icons.battery_charging_full_rounded,color: Colors.grey,),
                    const SizedBox(width: 5,),
                    Text('Type 2 • 30kW', style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),),
                    const SizedBox(width: 20,),
                    ColorWidget(text: chargingStation.available, color: Color(0xffffdf6e),),
                    const SizedBox(width: 20,),
                  ],
                ),
                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                        '€${chargingStation.rate}/hour',
                        style: TextStyle(color: Colors.white,fontSize: 18,),
                      ),
                ),
              ],

            ),
            const SizedBox(
              height: 10,
            ),

           GreyLine(),

            const SizedBox(
              height: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Stats',style: TextStyle(color: Colors.white,fontSize: 20),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeTile(size: size, value: '0 sessions', info: 'Sessions',),
                    HomeTile(size: size, value: '0.0 kWh', info: 'Used', ),

                  ],
                ),
              ],
            ),
            SizedBox(height: size.height/45,),

            InkWell(

              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChargingStart()));
              },
              child: WhiteButton2(text: 'Charge here',),
            ),






          ],
        ),
      ),
    );
  }
}
