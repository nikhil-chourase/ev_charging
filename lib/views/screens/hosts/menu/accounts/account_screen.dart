

import 'package:evcharging/views/screens/hosts/menu/accounts/close_account.dart';
import 'package:evcharging/views/screens/hosts/menu/accounts/language.dart';
import 'package:evcharging/views/widgets/account_widget.dart';
import 'package:evcharging/views/widgets/account_widget2.dart';
import 'package:evcharging/views/widgets/type_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {


  



  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        title: Text('Account Settings',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: Icon(Icons.arrow_back, color: Colors.white,
          ),
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              
              TypeText(
                type: 'General',
              ),
              const SizedBox(height: 20,),
        
              AccountWidget(
                size: size, 
                icon1: Icons.notifications_outlined, 
                icon2: Icons.language, 
                option1: 'Notifications', 
                option2: 'Language', onTap2: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LanguageScreen()));


                  },
                  onTap1: (){},
              ),
        
              const SizedBox(height: 20,),

              TypeText(
                type: 'About Us',
              ),

              const SizedBox(height: 20,),
        
              AccountWidget(
                size: size, 
                icon1: Icons.notifications_outlined, 
                icon2: Icons.question_mark_rounded, 
                option1: 'About Us', 
                option2: 'Help', onTap1: () { 

                 }, onTap2: () {  },
              ),
        
        
              const SizedBox(height: 20,),
        
               TypeText(
                type: 'Legal',
              ),
        
              const SizedBox(height: 20,),
        
        
               Column(
                 children: [
                   Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 37, 52),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  ),
                  width: double.infinity,
                  height: 140,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      AccountTile(
                        size: size,
                        icon: Icons.privacy_tip_outlined, 
                        type: 'Privacy policy ',
                      
                      ),

                      Container(
                        width: double.infinity,
                        height: 0.5,
                        decoration: BoxDecoration(
                          color: Colors.grey
                        ),
                      ),
                        AccountTile(
                        size: size,
                        icon: Icons.document_scanner_outlined, 
                        type: 'Terms & conditions',
                      
                      ),

                      
            
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 26, 37, 52),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                ),
                height: size.height/12,
                
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        FaIcon(Icons.document_scanner_outlined,color: Colors.white,size: 25,),
                        const SizedBox(width: 10,),
                    
                        Text('Service Facilitation Terms',style: TextStyle(
                          color: Colors.white,
                    
                        ),),
                    
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,size: 25,),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),
        
             TypeText(
                type: 'Account',
              ),


              const SizedBox(height: 20,),
        
        
        
            MaterialButton(
             
              child: AccountWidget2(size: size,
               icon: Icon(Icons.person_outline,color: Color(0xfff6285f),size: 25,), 
               option: Text(
                          'Close Account',style: TextStyle(
                          color: Color(0xfff6285f),
                          
                        ),
                  ),    
              ),
               onPressed: (){
                showModalBottomSheet(
                  context: context,
                  builder: (context) => CloseAccount(),
                  
                  );
              },
            ),
        
            const SizedBox(height: 30,),
              
          
            ],
          ),
        ),
      ),
    );
  }
}


