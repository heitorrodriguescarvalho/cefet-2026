void main() {
  final username = " ";
  final password = "123";

  bool isUsernameValidated = validateUsername(username);
  bool isPasswordValidated = validatePassword(password);

  if (isUsernameValidated) {
    print("O usuário passou na validação");
  } else {
    print("O usuário passou na validação");
  }

  if (isPasswordValidated) {
    print("A senha passou na validação");
  } else {
    print("A senha não passou na validação");
  }
}

bool validateUsername(String username) {
  if (username.length > 0) {
    return true;
  }

  return false;
}

bool validatePassword(String password) {
  if (password.length > 0) {
    return true;
  }

  return false;
}
