import 'package:flutter/material.dart';
import 'package:verse_app/Pages/SplashPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

late bool show_welcome;
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show_welcome = prefs.getBool('showWelcome') ?? true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
