import 'package:flutter/material.dart';
import 'package:youtube_tut/data/contants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: KTextStyle.headingText,),
                      Text(description,style: KTextStyle.descText,),
                    ]
                  )
                ),
              ),
            );
  }
}