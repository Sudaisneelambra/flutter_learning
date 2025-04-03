import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_tut/views/widget_tree.dart';

class Login extends StatefulWidget {
  final String title;

  const Login({super.key, required this.title});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEm = TextEditingController(text: 'abc');
  TextEditingController textPs = TextEditingController(text: '123');
  String? email = 'abc';
  String? pass = '123';

  @override
  void dispose() {
    textEm.dispose();
    textPs.dispose();
    super.dispose();
  }

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
                Lottie.asset('assets/lottie/Main Scene.json'),
                SizedBox(height: 20),
                TextField(
                  controller: textEm,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Enter your email',
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  controller: textPs,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Enter your Passeord',
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      onSubmitt();
                    },
                    child: Text(widget.title),
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

  void onSubmitt() {
    if (email == textEm.text && pass == textPs.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
  }
}
