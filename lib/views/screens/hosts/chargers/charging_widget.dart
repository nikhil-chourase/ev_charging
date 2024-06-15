
import 'package:evcharging/models/charging_station.dart';
import 'package:evcharging/views/widgets/color_widget.dart';
import 'package:flutter/material.dart';


class ChargingStationWidget extends StatelessWidget {
  const ChargingStationWidget({
   required this.chargingStation});


 final ChargingStation chargingStation;

 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 26, 37, 52),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: EdgeInsets.only(right: 20,),
            
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    
          Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                    chargingStation.image), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8,bottom: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      Text(chargingStation.place, style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400),),
                      Icon(Icons.settings_outlined, color: Colors.grey,size: 25,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(chargingStation.address,
                       style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
    
                  Row(
                    children: [
                      Text('€${chargingStation.rate} /hr',
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,),
                          ),
                    ],
                  ),
    
    
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Type 2 • 30kW',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
              
                      ColorWidget(
                        color: chargingStation.available =='Charging'? 
                        Color(0xffffdf6e): Color.fromARGB(255, 100, 240, 156),text: chargingStation.available, ),
              
                    ],
                  ),
                ],              
              ),
            ),
          ),
        ],
      ),
    );
  }
}