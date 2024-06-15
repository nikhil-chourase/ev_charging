



import 'package:evcharging/views/screens/hosts/home/home_page.dart';
import 'package:evcharging/views/screens/onboarding/auth/auth_screen.dart';
import 'package:evcharging/views/screens/onboarding/auth/signup_screen.dart';
import 'package:evcharging/views/screens/onboarding/auth/user_mode.dart';
import 'package:evcharging/views/screens/onboarding/onboarding1.dart';
import 'package:evcharging/views/screens/onboarding/onboarding2.dart';
import 'package:evcharging/views/screens/onboarding/onboarding3.dart';
import 'package:evcharging/views/screens/onboarding/splashScreen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<MaterialPageRoute> onNavigate(RouteSettings settings) {
    late final Widget selectedPage;



    switch (settings.name) {
      case HomePage.route:
        selectedPage = const HomePage();
        break;
      case AuthScreen.route:
        selectedPage = AuthScreen();
        break;

      case SignupScreen.route:
        selectedPage = SignupScreen();
        break;    

      case SplashScreen.route:
       selectedPage = SplashScreen();
        break; 

      case Onboarding1.route:
        selectedPage = Onboarding1();
        break;

      case Onboarding2.route:
        selectedPage = Onboarding2();
        break; 

      case Onboarding3.route:
        selectedPage = Onboarding3();
        break;    

      case UserMode.route:

        selectedPage = UserMode();
        break;    
 


      
      default:
        selectedPage = const AuthScreen();
        break;
    }
    return MaterialPageRoute(builder: (context) => selectedPage);
  }
}