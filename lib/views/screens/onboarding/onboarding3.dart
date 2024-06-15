import 'package:evcharging/views/screens/onboarding/auth/auth_screen.dart';
import 'package:evcharging/views/screens/onboarding/auth/user_mode.dart';
import 'package:evcharging/views/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';


class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  static const String route = '/onboarding3';


  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(
       backgroundImage: 'images/onboard3.jpg',
       mainText: 'Setup once & \n Earn regularly',
       secondText: 'Hosts can easily setup and sync \n booking schedules to the El-monde app \n for regular earning for their Chargers.',
      onTap: () { 
        
        Navigator.of(context).pushReplacementNamed(UserMode.route);

       },
      );
  
  }
}