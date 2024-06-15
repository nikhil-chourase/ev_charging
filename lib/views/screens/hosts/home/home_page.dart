import 'package:evcharging/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  static const String route = '/HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      bottomNavigationBar: Stack(
        children: [
           Container(
            height: 10,  // Adjust the height to control the shadow size
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, -3), // changes position of shadow
                ),
              ],
            ),
          ),
          BottomNavigationBar(
            elevation: 1,
            backgroundColor: Color.fromARGB(255, 11, 15, 24),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: pageIndex,
            onTap: (idx){
              setState(() {
                pageIndex = idx;
              });
          
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon( Icons.home_filled,
                  size: 26,),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(Icons.electric_bolt,
                  size: 26,),
                label: 'Sessions',
          
              ),BottomNavigationBarItem(
                icon: FaIcon(Icons.charging_station,
                size: 26,),
                label: 'Chargers',
              ),
              BottomNavigationBarItem(
               icon: FaIcon(Icons.wallet,
                size: 30,),
                label: 'C. miles',
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.menu,
                  size: 30,),
                label: 'Menu',
              ),
            ],
          ),
        ],
      ),
      body: pages[pageIndex],
    );
  }
}
