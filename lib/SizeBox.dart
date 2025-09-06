import 'package:flutter/material.dart';

class SizeBox extends StatelessWidget {
  const SizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asinker'),
        
      ),
      body: Container(
        child: Center(
          child: Container(
            height: 123,
            width: 321,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              boxShadow: [BoxShadow(spreadRadius: 2, blurRadius: 3, color: Colors.black)],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(23),
                topRight: Radius.circular(32),
                bottomLeft: Radius.circular(32),
                topLeft: Radius.circular(23)
              )
            ),
            
            
          ),
          
          
        ),
      ),
      
    );
  }
}