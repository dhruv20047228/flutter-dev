import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image App'), backgroundColor: Colors.green),
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5.0),
            ],
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1597848212624-a19eb35e2651?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
