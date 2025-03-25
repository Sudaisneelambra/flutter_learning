import 'package:flutter/material.dart';
import 'package:youtube_tut/data/notifiers.dart';
import 'package:youtube_tut/views/pages/homepage.dart';
import 'package:youtube_tut/views/pages/profilepage.dart';
import 'package:youtube_tut/views/widget/navbar.dart';

List<Widget> pages = [Homepge(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New App'),
        actions: [
          ValueListenableBuilder(
            valueListenable: isDark,
            builder: (context, value, child) {
              return IconButton(
                onPressed: () {
                  isDark.value = !isDark.value;
                },
                icon: Icon(value ? Icons.dark_mode : Icons.light_mode),
              );
            },
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, value, child) {
          return pages[selectedIndex.value];
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
