import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  final List<String> colours = [
    'Red',
    'Pink',
    'Yellow',
    'Orange',
    'Green',
    'Blue',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.builder(
        itemCount: colours.length,
        itemBuilder: (context, index) {
          final colour = colours[index];
          return Dismissible(
            key: Key(colour),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(colours[index]),
                    backgroundColor: Colors.blueAccent,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(colours[index]),
                    backgroundColor: Colors.lightGreen,
                  ),
                );
              }
            },
            background: Container(color: Colors.yellowAccent),
            secondaryBackground: Container(color: Colors.deepPurpleAccent),
            child: Card(child: ListTile(title: Text(colours[index]))),
          );
        },
      ),
    );
  }
}
