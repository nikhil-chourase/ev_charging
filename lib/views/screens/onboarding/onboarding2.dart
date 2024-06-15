
import 'package:evcharging/views/screens/onboarding/onboarding3.dart';
import 'package:evcharging/views/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';


class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  static const String route = '/onboarding2';


  @override
  Widget build(BuildContext context) {

    
    return OnboardingScreen(
      backgroundImage: 'images/onboard2.jpg',    
       mainText: 'Charge anytime & \n Pay without stress',
       secondText: 'Guests can charge whenever they want \n during their stay and pay via many ways \n to enjoy stress free holidays.',
        onTap: () { 
          Navigator.of(context).pushReplacementNamed(Onboarding3.route);

         },
      );
  
  }
}