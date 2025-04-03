import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_tut/views/pages/login.dart';
import 'package:youtube_tut/views/pages/onboarding.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset('assets/lottie/Lottie Lego.json'),
                  FittedBox(
                    child: Text('Flutter Map',
                      style: TextStyle(letterSpacing: 50, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Onboarding();
                      },));
                    }, child: Text('Get started')),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Login(title: 'Login',);
                      },));
                    }, child: Text('Login')),
                  )
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}