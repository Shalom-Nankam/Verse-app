class Validator {
  String? inputValidator(String userInput) {
    if (userInput.isEmpty) {
      return "Please fill this field";
    }
    return null;
  }

  String? emailValidator(String userInput) {
    List<String> inputList = userInput.split('');
    if (inputList.isEmpty) {
      return "Please fill this field";
    }
    if (!(inputList.contains('@') && (inputList.contains('.')))) {
      return "Please enter a valid e-mail";
    }
    return null;
  }

  String? confirmPasswordValidator(String password, String confirmPassword) {
    password.toLowerCase();
    confirmPassword.toLowerCase();
    if (password.isEmpty) {
      return "Please enter a valid password above";
    }
    if (confirmPassword.isEmpty) {
      return "Please confirm your password";
    }
    if (!(password == confirmPassword)) {
      return "Password is not correct. Check again!";
    }
    return null;
  }

  String? passwordValidator(String password) {
    password.toLowerCase();
    if (password.isEmpty) {
      return "Please enter a password";
    } else if (password.length <= 7) {
      return "Password cannot be less than 8 characters";
    }
    return null;
  }
}
