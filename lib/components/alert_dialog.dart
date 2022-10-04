import 'package:flutter/material.dart';

class DialogComponent {
  Future<void> _dialogBuilder(BuildContext context, String title, String content) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('alert'),
          content: const Text('content'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                // Navigator.of(context).pop();
                print('action...');
              },
            ),
          ],
        );
      },
    );
  }
}
