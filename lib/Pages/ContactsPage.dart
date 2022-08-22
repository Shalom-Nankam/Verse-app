import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List contacts = [
    {'name': 'John Doe', 'contact': '98765456789876'},
    {'name': 'Jane Doe', 'contact': '98765456789876'},
    {'name': 'Janel Doe', 'contact': '98765456789876'},
    {'name': 'Jamal Doe', 'contact': '98765456789876'},
    {'name': 'Jalal Doe', 'contact': '98765456789876'},
    {'name': 'Johnny Doe', 'contact': '98765456789876'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323334),
      appBar: AppBar(
        title: const Text(
          'Contacts',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.grey.shade700,
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
              Icons.add_call,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade100,
                    child: Icon(
                      Icons.face,
                      color: Colors.grey.shade900,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    contacts[index]['name'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    contacts[index]['contact'],
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: contacts.length),
      ),
    );
  }
}
