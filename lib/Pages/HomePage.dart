import 'package:flutter/material.dart';
import 'package:verse_app/Pages/ChatsPage.dart';
import 'package:verse_app/Pages/ClipsPage.dart';
import 'package:verse_app/Pages/ContactsPage.dart';
import 'package:verse_app/Pages/ProfilePage.dart';
import 'package:verse_app/Pages/SettingsPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 1;

  final List<Widget> pages = [
    const Profile(),
    const Chats(),
    const Clips(),
    const Contacts(),
    const Settings(),
  ];

  _ontap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            _index == 3 ? Colors.grey.shade700 : const Color(0xff323334),
        items: const [
          BottomNavigationBarItem(icon: FlutterLogo(), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_camera_front_outlined,
              ),
              label: 'Clips'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts,
              ),
              label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings'),
        ],
        currentIndex: _index,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 1.5,
        type: BottomNavigationBarType.fixed,
        onTap: _ontap,
      ),
    );
  }
}
