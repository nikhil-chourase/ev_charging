import 'package:evcharging/views/screens/onboarding/onboarding2.dart';
import 'package:evcharging/views/screens/onboarding/onboarding_screen.dart';
import 'package:evcharging/views/widgets/buttons/transparent_button.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  static const String route = '/onboarding1';



  @override
  Widget build(BuildContext context) {

    return OnboardingScreen(
      backgroundImage: 'images/onboard1.jpg',      
       mainText: 'Share, Care, Earn \n with EV Chargers!', 
       secondText: 'El-Monde enables Vacation Hosts to easily \n shares their EV chargers with Guests to \n conveniently charge during holidays',
        onTap: () =>

          Navigator.of(context).pushReplacementNamed(Onboarding2.route),
       
      );
  
  }
}