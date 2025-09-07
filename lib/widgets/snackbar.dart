import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar'), backgroundColor: Colors.green),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(
                  label: 'Undo',
                  textColor: Colors.blue,
                  onPressed: () {},
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                behavior: SnackBarBehavior.floating,
                duration: const Duration(milliseconds: 3000),

                content: Text('This is an error'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Show Snackbar'),
          ),
        ),
      ),
    );
  }
}
