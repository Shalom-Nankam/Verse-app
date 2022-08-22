import 'package:flutter/material.dart';
import 'package:verse_app/Pages/SignUpPage.dart';
import 'package:verse_app/utils/GlobalVariables.dart';

class Textformfield1 extends StatelessWidget {
  Textformfield1(
      {super.key,
      required this.label,
      required this.controller,
      required this.inputType,
      required this.onTap});
  final String label;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool onTap;
  var focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((value) {
        if (label.toLowerCase() == 'e-mail') {
          return repository.emailValidator(value!);
        }
        return repository.inputValidator(value!);
      }),
      onSaved: (newValue) {
        SignupState().setInput(newValue!, controller);
      },
      cursorColor: Colors.blue.shade900,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff323334)),
            borderRadius: BorderRadius.circular(20)),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff323334)),
            borderRadius: BorderRadius.circular(20)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      keyboardType: inputType,
      readOnly: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      focusNode: focus,
    );
  }
}

class Textformfield2 extends StatelessWidget {
  Textformfield2(
      {super.key,
      required this.label,
      required this.controller,
      required this.inputType,
      required this.onTap});
  final String label;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool onTap;
  var focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: ((value) {
        if (label.toLowerCase() == 'confirm password') {
          return repository.confirmPasswordValidator(
              SignupState().password.text, value!);
        } else if (label.toLowerCase() == 'password') {
          return repository.passwordValidator(value!);
        }
        return repository.inputValidator(controller.text);
      }),
      onSaved: (newValue) {
        SignupState().setInput(newValue!, controller);
      },
      cursorColor: Colors.blue.shade900,
      // obscureText: SignupState().showPassword,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff323334)),
            borderRadius: BorderRadius.circular(20)),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff323334)),
            borderRadius: BorderRadius.circular(20)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      keyboardType: inputType,
      readOnly: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: label.toLowerCase() == 'password'
          ? TextInputAction.next
          : TextInputAction.done,
      focusNode: focus,
    );
  }
}
