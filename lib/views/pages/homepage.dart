import 'package:flutter/material.dart';
import 'package:youtube_tut/data/contants.dart';
import 'package:youtube_tut/views/pages/courses.dart';
import 'package:youtube_tut/views/widget/containerwidget.dart';
import 'package:youtube_tut/views/widget/herowidget.dart';

class Homepge extends StatelessWidget {
   Homepge({super.key});

  final List<String> lists =[
    KDatas.clientUi,
    KDatas.backend,
    KDatas.frentend ,
    KDatas.database
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              HeroWidget(
                title: 'Flutter',
                nextPage: CoursesWidget(),
              ),
              ...List.generate(lists.length, (index) {
                return ContainerWidget(title: lists[index], description: 'Here it it is the sameple example');
              },)
            ]
          ),
        ),
    );
  }
}