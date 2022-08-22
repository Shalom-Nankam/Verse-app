import 'package:verse_app/Models/Validators.dart';

class Repository {
  final Validator _validator = Validator();

  String? inputValidator(String userInput) =>
      _validator.inputValidator(userInput);

  String? emailValidator(String userInput) =>
      _validator.emailValidator(userInput);

  String? confirmPasswordValidator(String password, String confirmPassword) =>
      _validator.confirmPasswordValidator(password, confirmPassword);

  String? passwordValidator(String password) =>
      _validator.passwordValidator(password);
}
