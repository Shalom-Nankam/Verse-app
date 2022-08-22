import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323334),
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.grey.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(children: [
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.blue.shade900,
                size: 30,
              ),
              title: const Text(
                'Secure your Account',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.alarm,
                color: Colors.blue.shade900,
                size: 30,
              ),
              title: const Text(
                'Manage your alerts',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.chat_bubble,
                color: Colors.blue.shade900,
                size: 30,
              ),
              title: const Text(
                'Chat settings',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.storage_outlined,
                color: Colors.blue.shade900,
                size: 30,
              ),
              title: const Text(
                'See how data is stored',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.map_outlined,
                color: Colors.blue.shade900,
                size: 30,
              ),
              title: const Text(
                'Languages',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.help_center,
                color: Colors.blue.shade900,
                size: 30,
              ),
              title: const Text(
                'Get Help',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text('Dark mode',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const Spacer(),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.blue.shade900,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
