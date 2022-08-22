import 'package:flutter/material.dart';
import 'package:verse_app/Pages/HomePage.dart';
import 'package:verse_app/Pages/SignUpPage.dart';
import 'package:verse_app/utils/GlobalVariables.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  // late bool? showPassword;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // setState(() {
    //   showPassword = false;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Column(children: [
                  Image.asset('assets/images/verse.png'),
                  const Text(
                    'Verse',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff323334)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 24, color: Color(0XFF323334)),
                  ),
                ]),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Column(children: [
                  TextField(
                    cursorColor: const Color(0xff323334),
                    cursorHeight: 20,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff323334),
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff323334),
                          )),
                      hintText: 'Username',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: const Color(0xff323334),
                    cursorHeight: 20,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff323334),
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xff323334),
                          )),
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    obscureText: showPasswordOnLoginPage == true ? false : true,
                  ),
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: showPasswordOnLoginPage,
                        onChanged: ((value) {
                          setState(() {
                            showPasswordOnLoginPage = value!;
                          });
                        }),
                        fillColor: MaterialStateProperty.all(Colors.grey),
                        checkColor: Colors.blue.shade900,
                        side: const BorderSide(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          // setState(() {
                          //   if (showPassword == false) {
                          //     showPassword = true;
                          //   } else {
                          //     showPassword = false;
                          //   }
                          // });
                        },
                        child: const Text('Show Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text('forgot password?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                }),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff323334)),
                  fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New user?',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                  ),
                  TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ));
                    }),
                    child: Text(
                      'Sign up here',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
