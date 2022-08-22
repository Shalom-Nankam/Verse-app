import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:verse_app/Widgets/Skip.dart';

import 'LoginPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          //PageView to control the three onboarding pages
          child: PageView(
            controller: _controller,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [Spacer(), Skip()],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Welcome to the Verse app for chat and fun',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900,
                              overflow: TextOverflow.clip,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    const Text(
                      'Find new friends online',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const WormEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Color(0xff323334),
                          spacing: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: (() => _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut)),
                      color: Colors.blue.shade900,
                      minWidth: double.infinity,
                      height: 50,
                      child: const Text(
                        'NEXT',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const [Spacer(), Skip()],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Welcome to the Verse app for chat and fun',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900,
                              overflow: TextOverflow.clip,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    const Text(
                      'Easily share video and photo files with friends',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const WormEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Color(0xff323334),
                          spacing: 16,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: (() => _controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut)),
                          color: Colors.blue.shade900,
                          minWidth: 70,
                          height: 50,
                          child: const Text(
                            'BACK',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: (() => _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut)),
                          color: Colors.blue.shade900,
                          minWidth: 70,
                          height: 50,
                          child: const Text(
                            'NEXT',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        TextButton(
                          onPressed: (() {}),
                          child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade300),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Welcome to the Verse app for chat and fun',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900,
                              overflow: TextOverflow.clip,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    const Text(
                      'Backup your chats regularly and for free',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const WormEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Color(0xff323334),
                          spacing: 16,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: (() => _controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut)),
                          color: Colors.blue.shade900,
                          minWidth: 70,
                          height: 50,
                          child: const Text(
                            'BACK',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: (() async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('showWelcome', false);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const login(),
                                ));
                          }),
                          color: Colors.blue.shade900,
                          minWidth: 70,
                          height: 50,
                          child: const Text(
                            'DONE',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )
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
