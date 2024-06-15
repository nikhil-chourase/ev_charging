

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evcharging/controllers/charging_service.dart';
import 'package:evcharging/models/charging_station.dart';
import 'package:evcharging/views/screens/hosts/chargers/charging_info.dart';
import 'package:evcharging/views/screens/hosts/chargers/charging_widget.dart';
import 'package:evcharging/views/widgets/color_widget.dart';
import 'package:evcharging/views/widgets/buttons/white_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyChargers extends ConsumerWidget {
  MyChargers({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref ) {

    final chargingStationsAsyncValue = ref.watch(chargingStationsProvider);


    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        title: Text('My Chargers',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.white,),
      ),
      body:   chargingStationsAsyncValue.when(


        // future:  _fetchChargingStations(),
        data: (chargingStations) {

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Expanded(
                  child: ListView.builder(
                    itemCount: chargingStations.length,
                    itemBuilder: (context, index) {
                      final chargingStation = chargingStations[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: InkWell(
                          child: ChargingStationWidget(chargingStation: chargingStation,),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ChargingInfo(chargingStation: chargingStation,),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
          
          
                
                SizedBox(height: size.height/3.9,),
          
                WhiteButton(
                  text: 'Add New Charger', icon: Icons.add_circle_outline)
               
              ],
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}






  // Future<List<ChargingStation>> _fetchChargingStations() async {
  //   final FirebaseFirestore _db = FirebaseFirestore.instance;
  //   QuerySnapshot snapshot = await _db.collection('chargingStations').get();
  //   return snapshot.docs.map((doc) {
  //     return ChargingStation(
  //       image: doc['image'],
  //       place: doc['place'],
  //       address: doc['address'],
  //       rate: doc['rate'],
  //       available: doc['available'],
  //     );
  //   }).toList();
  // }




  //  final List<ChargingStation> chargingStations = [
  //   ChargingStation(
  //     image: 'https://images.unsplash.com/photo-1600490819528-42405785433a?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  //     place: 'Hôtel de Ville',
  //     address: 'Pl. de l\'Hôtel de Ville, Paris • 1.4 km',
  //     rate: '28.00',
  //     available: 'Charging',
  //   ),
  //   ChargingStation(
  //     image: 'https://images.unsplash.com/photo-1615901555268-839b7a1ede54?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  //     place: 'Ober Mamma',
  //     address: '107 Bd Richard-Lenoir, Par.. • 1.4 km',
  //     rate: '26.00',
  //     available: 'Available',
  //   ),
  // ];

  
