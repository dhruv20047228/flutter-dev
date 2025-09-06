import 'package:flutter/material.dart';

class rowsncol extends StatelessWidget {
  const rowsncol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows n Column')),
      body: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.amberAccent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 50, width: 50, color: Colors.redAccent),
            Container(height: 50, width: 50, color: Colors.green),
            Container(height: 50, width: 50, color: Colors.purple),
            Container(height: 50, width: 50, color: Colors.blue),
            Container(height: 50, width: 50, color: Colors.black)
          ],
        ),
      ),
    );
  }
}
