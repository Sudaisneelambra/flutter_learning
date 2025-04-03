import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title, this.nextPage});

  final Widget? nextPage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () {
            nextPage != null
                ? Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => nextPage!),
                )
                : null;
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Hero(
                tag: 'hero1',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    'https://gulf.informalnewz.com/wp-content/uploads/2024/03/UAE-public-sector-employees.png',
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
