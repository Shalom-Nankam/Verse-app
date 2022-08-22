import 'package:flutter/material.dart';

import '../Widgets/VIdeoCard.dart';

class Clips extends StatefulWidget {
  const Clips({super.key});

  @override
  State<Clips> createState() => _ClipsState();
}

class _ClipsState extends State<Clips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: const Text(
          'Clips',
          style: TextStyle(fontSize: 30, color: Colors.white),
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
              Icons.save,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => const VideoCard(),
          itemCount: 20,
        ),
      ),
    );
  }
}
