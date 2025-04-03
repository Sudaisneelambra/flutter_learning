import 'package:flutter/material.dart';
import 'package:youtube_tut/data/notifiers.dart';
import 'package:youtube_tut/views/pages/welcompage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/images.jpg'),
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    selectedIndex.value = 0;
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
