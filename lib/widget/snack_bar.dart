import 'package:flutter/material.dart';

successSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.green[400],
    content: Text(message),
    action: SnackBarAction(
      textColor: Colors.white,
      label: 'Got it',
      onPressed: () {},
    ),
  ));
}

failedSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red[400],
    content: Text(message),
    action: SnackBarAction(
      textColor: Colors.white,
      label: 'Got it',
      onPressed: () {},
    ),
  ));
}
