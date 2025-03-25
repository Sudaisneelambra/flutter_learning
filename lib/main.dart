import 'package:flutter/material.dart';
import 'package:youtube_tut/data/notifiers.dart';
import 'package:youtube_tut/views/widget_tree.dart';

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
            home: WidgetTree(),
          );
        },
        );
      },
    );
  }
}
