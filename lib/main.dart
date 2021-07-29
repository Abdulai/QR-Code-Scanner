import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/check_document.dart';
import 'package:qr_code_scanner/screens/error.dart';
import 'package:qr_code_scanner/screens/list_of_companies.dart';
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
    final checkDocumentButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[900],
      child: MaterialButton(
        minWidth: 335.0,
        height: 70.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Document()));
        },
        child: Text(
          'Check Document',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final companiesButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue[900],
      child: MaterialButton(
        minWidth: 335.0,
        height: 70.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Companies()),
          );
        },
        child: Text('List of Companies',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white10,
            child: Padding(
              padding: EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 220.0,
                    width: 287.0,
                    child: Image(
                      image: AssetImage('assets/illus.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 75.0),
                  ),
                  checkDocumentButton,
                  SizedBox(height: 30.0),
                  companiesButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
