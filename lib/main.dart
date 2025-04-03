import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_tut/data/contants.dart';
import 'package:youtube_tut/data/notifiers.dart';
import 'package:youtube_tut/views/pages/welcompage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    initDarkMood();
    super.initState();
  }

 void initDarkMood() async{
    final SharedPreferences pref = await SharedPreferences.getInstance();
    isDark.value = pref.getBool(KDarkMode.darkKey) ?? false;
 }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDark,
      builder: (context, value, child) {
        return ValueListenableBuilder(valueListenable: isDark, builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.teal,
                brightness: value ? Brightness.light : Brightness.dark,
              ),
            ),
            home: WelcomePage(),
          );
        },
        );
      },
    );
  }
  
 
}
