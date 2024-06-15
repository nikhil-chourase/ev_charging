


import 'package:evcharging/controllers/auth_service.dart';
import 'package:evcharging/views/screens/hosts/home/home_page.dart';
import 'package:evcharging/views/screens/onboarding/auth/signup_screen.dart';
import 'package:evcharging/views/widgets/buttons/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  static const String route = '/auth_screen';

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {


  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _emailError = false;
  bool _passwordError = false;
  



   void _login() {

    FocusScope.of(context).unfocus();

    setState(() {
      _emailError = _emailController.text.trim().isEmpty;
      _passwordError = _passwordController.text.isEmpty;
    });


     if (!_emailError && !_passwordError) {
      final authController = ref.read(authControllerProvider.notifier);
      authController.loginUser(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );
    }
  }


    @override
  void initState() {
    // TODO: implement initState
    super.initState();
     final authController = ref.read(authControllerProvider.notifier);
     authController.loginResultNotifier.addListener(() {
      final loginResult = authController.loginResultNotifier.value;
      if (loginResult == true) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else if (loginResult == false) {
        // Handle login failure if needed
      }
    });

  }



  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               
               SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    child: Image.asset('images/splash.png'),
                  ),
        
                  
              
                ],
              ),
            ),
        
            SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                   padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      
                        children: [
                          Text('Sign in', style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                      
                            fontWeight: FontWeight.w500,),
                          ),
                      
                          Text(
                        'Enter your registred account to sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w100
                            ),
                          
                          ),
                      
                        ],
                      ),
                    ],
                  ),
                ),
            
                
                SizedBox(height: size.height/20,),

                
            
                Container(
                  height: size.height/3.8,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage(
                        'images/login_charger.png'), 
                    fit: BoxFit.cover,
                  ),
            
                  ),
            
                ),
        
                SizedBox(height: size.height/20,),

                 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white10,
                            errorText: 
                                _emailError ? 'Email cannot be empty' : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white10,
                            errorText:
                                _passwordError ? 'Password cannot be empty' : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () async{
                            // Implement login logic here
                            _login();

                          },
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                            textStyle: TextStyle(fontSize: 16),
                          ),
                        ),

                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            // Navigate to the sign-up screen
                              Navigator.of(context).pushReplacementNamed(SignupScreen.route);
                          },
                          child: Text("Don't have an account? Sign up"),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: size.height / 20),

        
        
                LoginButton(image: 'images/google.png', text: 'Continue with Google',),
        
                const SizedBox(height: 20,),
        
                LoginButton(image: 'images/apple1.png', text: 'Continue with Apple',),
        
        
                SizedBox(height: size.height /8,),
        
                Column(
                  children: [
                    Text(
                      'By starting my application, I agree to El-Monde’s',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
        
                    Text.rich(
                      TextSpan(
                          text: 'Terms of Service ', // Default style for this text
                          style: TextStyle(color: Colors.white), // Base style
                          children: <TextSpan>[
                            TextSpan(
                              text: 'and ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
        
                  ),
        
        
        
        
        
                    
        
                  ],
                ),
        
        
        
                
        
        
        
        
            
            
              ],
            ),
            ],
          ),
        
        
        ),
      ),
    );
  }
}
