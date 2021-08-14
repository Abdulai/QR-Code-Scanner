import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/register.dart';
import 'package:qr_code_scanner/screens/sign_in.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool isToggle = false;
  void toggleScreen() {
    setState(
      () {
        isToggle = !isToggle;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isToggle) {
      return Register(toggleScreen: toggleScreen);
    } else {
      return SignIn(toggleScreen: toggleScreen);
    }
  }
}
