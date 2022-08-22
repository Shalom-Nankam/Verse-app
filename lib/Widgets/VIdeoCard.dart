import 'package:flutter/material.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({super.key});

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/woman.png',
      ),
      Positioned(
        bottom: 0,
        height: 50,
        left: 0,
        right: 0,
        child: Container(
          color: Colors.blue.shade800,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent.shade100,
                radius: 30,
                child: const Icon(
                  Icons.face,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Susan',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const Spacer(),
              const Text(
                '30secs',
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: 150.0,
        left: 150.0,
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow_outlined,
              color: Colors.black,
              size: 100,
            )),
      ),
    ]);
  }
}
