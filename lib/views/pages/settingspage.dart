import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final String title;

  const SettingsPage({super.key, required this.title});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController nameController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double slideValue = 0.0;
  String? bropEl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Hello World'),
                      duration: Duration(seconds: 4),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Open Snack bar'),
              ),
              Divider(
                endIndent: 200,
                thickness: 3,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert'),
                        content: Text('this is alert message'),
                        actions: [
                          FilledButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Open Dialogue'),
              ),
              DropdownButton<String>(
                value: bropEl,
                items: [
                  DropdownMenuItem(value: 'el1', child: Text('Element One')),
                  DropdownMenuItem(value: 'el2', child: Text('Element Two')),
                  DropdownMenuItem(value: 'el3', child: Text('Element Three')),
                  DropdownMenuItem(value: 'el4', child: Text('Element Four')),
                  DropdownMenuItem(value: 'el5', child: Text('Element Five')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    bropEl = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Name'),
                ),
                controller: nameController,
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(nameController.text),
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('click me'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('changer me'),
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                value: slideValue,
                max: 10,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    slideValue = value;
                    print(value);
                  });
                },
              ),
              Image.network(
                height: 300,
                width: 300,
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
              ),
              InkWell(
                onTap: () {
                  print('tapped');
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('click Me')),
              FilledButton(onPressed: () {}, child: Text('click Me')),
              TextButton(onPressed: () {}, child: Text('click Me')),
              OutlinedButton(onPressed: () {}, child: Text('click Me')),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
