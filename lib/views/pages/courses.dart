import 'package:flutter/material.dart';
import 'package:youtube_tut/views/widget/herowidget.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [HeroWidget(title: 'Courses Page')]),
        ),
      ),
    );
  }
}
