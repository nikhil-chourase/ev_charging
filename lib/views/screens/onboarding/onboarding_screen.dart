




import 'package:evcharging/views/widgets/buttons/transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
    required this.backgroundImage,
    required this.mainText,
    required this.secondText,
    required this.onTap,
  });

  final String backgroundImage;
  final String mainText;
  final String secondText;
  final VoidCallback onTap;

  Future<void> _loadImage(BuildContext context) async {
    await precacheImage(AssetImage(backgroundImage), context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      body: FutureBuilder(
        future: _loadImage(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container( 
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                  image: AssetImage(backgroundImage),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        child: Image.asset('images/splash.png'),
                      ),
                      TransparentButton(
                        onPressed: () {},
                        text: 'Skip',
                      ),
                    ],
                  ),
                  Spacer(flex: 5),
                  Column(
                    children: [
                      Text(
                        mainText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        secondText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: onTap,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Container(
                          height: 40,
                          width: 260,
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 1),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
