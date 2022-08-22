import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff323334),
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.delete_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.pin,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(
                  Icons.face_outlined,
                  size: 50,
                ),
                title: const Text(
                  'Nicky22',
                  style: TextStyle(
                      color: Color(0xff323334),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Are you there?',
                  style: TextStyle(color: Colors.blue.shade900, fontSize: 14),
                ),
                trailing: index.isEven
                    ? const Text(
                        '12:00 pm',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      )
                    : const Text(
                        'online',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
              ),
              itemCount: 100,
            ),
          )
        ],
      ),
    );
  }
}
