

import 'package:evcharging/constants.dart';
import 'package:evcharging/controllers/user_notifier.dart';
import 'package:evcharging/models/user.dart';
import 'package:evcharging/views/screens/hosts/menu/accounts/account_screen.dart';
import 'package:evcharging/views/widgets/account_widget.dart';
import 'package:evcharging/views/widgets/account_widget2.dart';
import 'package:evcharging/views/widgets/color_widget.dart';
import 'package:evcharging/views/widgets/type_text.dart';
import 'package:evcharging/views/widgets/buttons/white_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {


    final user = ref.watch(userProvider);
    

    final size = MediaQuery.of(context).size;

    

    



    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        actions: [
           Padding(
            padding: const EdgeInsets.only(right: 22),
            child: FaIcon(Icons.notifications_none_outlined,color: Colors.white,),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 37, 52),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 32,
                        backgroundImage:  AssetImage('images/Designer.png')
                      ,),

                      SizedBox(width: 10,),

                         Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(' ${user!.name}',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),),
                        SizedBox(height: 10,),
                        Text(' ${user!.email}',style: TextStyle(
                          color: Colors.grey.shade600,
                        ),),
                      ],
                    ),
                    ],
                  ),

                   

                    ColorWidget(color: Color(0xff98a2b3), text: 'Host'),
                  
                ],
              ),
            ),

            SizedBox(height: 23,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TypeText(
                  type: 'General',
                ),

                const SizedBox(height: 20,),

                AccountWidget(
                  size: size,
                  icon1: Icons.person_outline, 
                  icon2: Icons.charging_station, 
                  option1: 'Account Settings', 
                  option2: 'My Chargers', onTap1: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountScreen()));

                   }, onTap2: () {  },
                ),

                

                const SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                     TypeText(
                        type: 'Support',
                      ),


                    const SizedBox(height: 10,),
                    AccountWidget2(
                      size: size, 
                      icon: Icon(Icons.question_mark_rounded,color: Colors.white,size: 25,), 
                      option: Text(
                        'Help',style: TextStyle(
                        color: Colors.white,
                        
                      ),),),

                    SizedBox(height: size.height/16,),

                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent, // Transparent background
                            border: Border.all(
                              color: Colors.grey, // White border color
                              width: 1, // Border width
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                FaIcon(Icons.arrow_downward_sharp,color: Colors.white,size: 15,),
                                FaIcon(Icons.arrow_upward_sharp,color: Colors.white,size: 15,),

                                SizedBox(width: 10,) ,
                                Text('Switch to EV User',style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20,),


                         WhiteButton(text: 'Log Out', icon: Icons.exit_to_app_outlined,),
                      


                      ],
                    ),
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
