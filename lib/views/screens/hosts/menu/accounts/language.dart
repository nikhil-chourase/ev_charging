

import 'package:evcharging/constants.dart';
import 'package:evcharging/views/widgets/buttons/white_button2.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

 int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 11, 15, 24),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 15, 24),
        title: Text('Language',style: TextStyle(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(

         children: [

          Expanded(
            child: ListView.builder(
            
              itemCount: languages.length,
              itemBuilder: (BuildContext context, int index){

                 String language = languages[index];
                  String flagAsset = languageFlags[language]!;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                        selectedIndex = index;
                      });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Transparent background
                           border: Border.all(
                            color: selectedIndex == index ? Colors.blue : Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                  
                            Row(
                              children: [
                                Container(
                                   height: 30,
                                    width: 30,
                                  child: Image.asset(
                                    flagAsset,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                  
                                
                                Text(languages[index],style: TextStyle(color: Colors.white),),
                              ],
                            ),
                  
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: selectedIndex == index ? Colors.blue : Colors.grey,
                                  width: 0.5,
                                ),
                                color:  Colors.transparent,
                             ),
                             padding: EdgeInsets.all(6),
                              height: 30,
                              width: 30,
                              child: Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: selectedIndex == index ? Colors.blue : Colors.transparent,
                                  width: 0.5,
                                ),
                                color: selectedIndex == index ? Colors.blue : Colors.transparent,
                             ),
                                 
                              ),
                            ),
                  
                          ],
                        ),
                                 
                    ),
                  ),
                );
              }),
          ),


          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: WhiteButton2(text: 'Save')),

         ],

        ),
      ),
    );
  }
}