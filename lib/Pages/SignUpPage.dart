import 'package:flutter/material.dart';
import 'package:verse_app/Pages/LoginPage.dart';
import 'package:verse_app/Widgets/TextFormFields.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _firstname = TextEditingController();
  final _lastname = TextEditingController();
  final _username = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _location = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final _contact = TextEditingController();
  final confirmPassword = TextEditingController();
  late bool showPassword;

  @override
  void initState() {
    super.initState();
    _dob = TextEditingController(text: "12/12/2022");
    _location = TextEditingController(text: 'Abuja, Nigeria');
    setState(() {
      showPassword = false;
    });
  }

  void setInput(String value, TextEditingController controller) {
    setState(() {
      controller = TextEditingController(text: value);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff323334),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Sign up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Sign up to Verse',
                style: TextStyle(
                    color: Color(0xff323334),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 20,
                child: Text(
                  'All fields are required',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Textformfield1(
                          onTap: false,
                          label: 'First Name',
                          controller: _firstname,
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Textformfield1(
                          onTap: false,
                          label: 'Last Name',
                          controller: _lastname,
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Textformfield1(
                          onTap: false,
                          label: 'Username',
                          controller: _username,
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Textformfield1(
                              onTap: true,
                              label: 'DOB',
                              controller: _dob,
                              inputType: TextInputType.datetime,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Set Date',
                                style: TextStyle(color: Colors.blue.shade700),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Textformfield1(
                              onTap: true,
                              label: 'Location',
                              controller: _location,
                              inputType: TextInputType.none,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Set Location',
                                style: TextStyle(color: Colors.blue.shade700),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Textformfield1(
                          onTap: false,
                          label: 'Contact Number',
                          controller: _contact,
                          inputType: TextInputType.phone,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Textformfield1(
                          onTap: false,
                          label: 'E-mail',
                          controller: email,
                          inputType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Textformfield2(
                              onTap: false,
                              label: 'Password',
                              controller: password,
                              inputType: TextInputType.text,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: showPassword,
                                  onChanged: ((value) {
                                    setState(() {
                                      showPassword = value!;
                                    });
                                  }),
                                  fillColor:
                                      MaterialStateProperty.all(Colors.grey),
                                  checkColor: Colors.blue.shade900,
                                  side: const BorderSide(color: Colors.black),
                                ),
                                Text('Show Password',
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontSize: 14,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Textformfield2(
                          onTap: false,
                          label: 'Confirm Password',
                          controller: confirmPassword,
                          inputType: TextInputType.text,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (() {
                  final isValid = _formKey.currentState!.validate();
                  if (isValid) {
                    _formKey.currentState!.save();
                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const login(),
                      ));
                  }
                 
                }),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade900),
                  fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
