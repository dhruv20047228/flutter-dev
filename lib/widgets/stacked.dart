import 'package:flutter/material.dart';

class Stacked extends StatelessWidget {
  const Stacked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stacked or Positioned')),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                image: DecorationImage(
                  image: AssetImage('assets/crossaint.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(height: 50, width: 50, color: Colors.pink),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(height: 50, width: 50, color: Colors.greenAccent),
          ),
        ],
      ),
    );
  }
}
