import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:verse_app/Pages/LoginPage.dart';

import '../main.dart';
import 'WelcomePage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), (() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('showWelcome', false);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                show_welcome == true ? const WelcomePage() : const login(),
          ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Image.asset(
                'assets/images/verseLogo.png',
                //  fit: BoxFit.fill,
                //   scale: 10.0,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
