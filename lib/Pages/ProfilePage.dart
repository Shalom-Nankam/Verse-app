import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323334),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Profile'),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Stack(alignment: Alignment.bottomRight, children: [
                  CircleAvatar(
                    radius: 120.0,
                    backgroundColor: Colors.blueGrey.shade100,
                    child: const FlutterLogo(
                      size: 100,
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: FractionalTranslation(
                      translation: const Offset(-0.4, -0.3),
                      child: IconButton(
                        icon: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.blue.shade700,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.face),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        '',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Name',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.people),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        'Mac-B',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Nickname',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Enter your nickname'),
                            titlePadding: const EdgeInsets.all(16),
                            content: const TextField(autofocus: true),
                            actions: [
                              TextButton(
                                onPressed: () {},
                                child: const Text('Save'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.male),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        'Male',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Gender',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        '0098765456789',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Phone number',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.location_pin),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        'Ibadan, Nigeria',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Location',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.cake),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        '12th, June',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Birthday',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.search),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text(
                        'Everyone',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Who can see my profile',
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
