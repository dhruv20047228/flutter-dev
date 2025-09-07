import 'package:flutter/material.dart';

class AlertDialogue extends StatefulWidget {
  const AlertDialogue({super.key});

  @override
  State<AlertDialogue> createState() => _AlertDialogueState();
}

class _AlertDialogueState extends State<AlertDialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert'), backgroundColor: Colors.deepOrange),
      
      body: Center(
        child: ElevatedButton(
          onPressed: () => showMyDialogue(context), // Added function call
          child: const Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> showMyDialogue(BuildContext context) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('AlertDialogue title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('This is a demo alert dialogue.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Approve'),
          ),
          TextButton(
            // Added Cancel button
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
        ],
      );
    },
  );
}
