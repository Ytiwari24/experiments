import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  // List to store the date and time for each item
  List<String> itemDates = List.filled(6, ''); // Initialize all items with empty strings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder with Date and Time'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Update the date and time for the tapped item
              setState(() {
                itemDates[index] = DateTime.now().toString();
              });
            },
            child: ListTile(
              title: Text(itemDates[index].isEmpty ? items[index] : itemDates[index]),
              // Add any other widgets as needed for each item
            ),
          );
        },
      ),
    );
  }
}

// void main() => runApp(MaterialApp(home: MyListView()));
