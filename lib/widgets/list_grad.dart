import 'package:flutter/material.dart';

class ListGrad extends StatefulWidget {
  const ListGrad({super.key});

  @override
  State<ListGrad> createState() => _ListGradState();
}

class _ListGradState extends State<ListGrad> {
  List<String> Characters = [
    'Naruto',
    'Ayanokoji',
    'Light',
    'Pluto',
    'Sung-jin-woo',
  ];
  Map actor = {
    'Characters': ['Naruto', 'Ayanokoji', 'Light', 'Pluto', 'Sung-jin-woo'],
    'Actors': ['Karan', 'Akshit', 'Gaurav', 'Asif', 'Himanshu'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grad'),
        elevation: 0,
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: ListView.builder(
          
          itemCount: Characters.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.orangeAccent,
              child: ListTile(
                onTap: () {
                  print((actor['Characters'][index]));
                },
                leading: Icon(Icons.person),
                title: Text(actor['Characters'][index]),
                subtitle: Text(actor['Actors'][index]),
              ),
            );
          },
        ),
        
        
      ),
    );
  }
}
