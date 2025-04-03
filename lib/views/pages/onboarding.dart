import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_tut/views/pages/login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Lottie.asset('assets/lottie/Animation - 1743067466812.json'),
                Text('Flutter is a UI toolkit for building cross-platform apps',
                style: TextStyle(letterSpacing: 5, color: Colors.red, fontSize: 15),),           
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Login(title: 'Register',);
                      },));
                    },
                    child: Text('Next'),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
