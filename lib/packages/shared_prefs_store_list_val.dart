import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPrefListVal extends StatefulWidget {
  const SharedPrefListVal({super.key});

  @override
  _SharedPrefListValState createState() => _SharedPrefListValState();
}

class _SharedPrefListValState extends State<SharedPrefListVal> {
  TextEditingController _textFieldController = TextEditingController();
  List<String> _items = [];

  @override
  void initState() {
    super.initState();
    _loadList();
  }

  Future<void> _loadList() async {
    final prefs = await SharedPreferences.getInstance();
    final items = prefs.getStringList('items') ?? [];
    setState(() {
      _items = items;
    });
  }

  Future<void> _saveList(List<String> items) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('items', items);
    setState(() {
      _items = items;
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
            controller: _textFieldController,
            decoration: InputDecoration(
              hintText: 'Enter an item',
              labelText: 'Item',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _items.add(_textFieldController.text);
              });
              _saveList(_items);
              _textFieldController.clear();
            },
            child: Text('Add item'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_items[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
