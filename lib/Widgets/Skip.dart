// this is a widget that implements a skip textbutton for pages

import 'package:flutter/material.dart';
import 'package:verse_app/Pages/LoginPage.dart';

class Skip extends StatelessWidget {
  const Skip({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const login(),
            ));
      }),
      child: Text(
        'SKIP',
        style: TextStyle(fontSize: 18, color: Colors.grey.shade300),
      ),
    );
  }
}
