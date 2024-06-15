import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({
    super.key,
    required this.size, required this.value, required this.info,
  });

  final Size size;
  final String value;
  final String info;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height/6,
      width: size.width/2.4,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 26, 37, 52),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(value,style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
          Text(info,style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w300
          ),)
        ],
      ),
    );
  }
}