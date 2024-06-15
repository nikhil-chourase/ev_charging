import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evcharging/models/charging_station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final firestoreServiceProvider = Provider<FirestoreService>((ref) {
  return FirestoreService();
});

final chargingStationsProvider = FutureProvider<List<ChargingStation>>((ref) async {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return firestoreService.getChargingStations();
});



class FirestoreService {
  
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<ChargingStation>> getChargingStations() async {
    QuerySnapshot snapshot = await _db.collection('chargingStations').get();
    return snapshot.docs.map((doc) {
      return ChargingStation(
        image: doc['image'],
        place: doc['place'],
        address: doc['address'],
        rate: doc['rate'],
        available: doc['available'],
      );
    }).toList();
  }

 
}
