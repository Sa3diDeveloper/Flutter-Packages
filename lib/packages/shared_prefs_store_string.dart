import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStringVal extends StatefulWidget {
  const SharedPrefStringVal({super.key});

  @override
  _SharedPrefStringValState createState() => _SharedPrefStringValState();
}

class _SharedPrefStringValState extends State<SharedPrefStringVal> {
  TextEditingController _nameController = TextEditingController();
  String _name = '';

  @override
  void initState() {
    super.initState();
    _loadName();
  }

  Future<void> _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('name') ?? '';
    setState(() {
      _name = name;
    });
  }

  Future<void> _saveName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    setState(() {
      _name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _saveName(_nameController.text);
              _nameController.clear();
            },
            child: Text('Save'),
          ),
          SizedBox(height: 20),
          Text('Name: $_name'),
        ],
      ),
    );
  }
}
