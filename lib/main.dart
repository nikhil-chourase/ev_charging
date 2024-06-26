import 'package:evcharging/controllers/auth_service.dart';
import 'package:evcharging/routes/router.dart';
import 'package:evcharging/views/screens/onboarding/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      initialRoute: SplashScreen.route,
      onGenerateRoute: AppRouter.onNavigate,
    );
  }
}




