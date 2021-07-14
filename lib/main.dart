import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Home',
          style: TextStyle(
              fontSize: 23.0,
              color: Colors.blue[900],
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(),
    );
  }
}
