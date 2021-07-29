import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/error.dart';
import 'package:qr_code_scanner/screens/serial_search.dart';

class Document extends StatelessWidget {
  const Document({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeScannerButton = Material(
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
            MaterialPageRoute(builder: (context) => Errors()),
          );
        },
        child: Text(
          'QR code scanner',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final serialNumberButton = Material(
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
            MaterialPageRoute(builder: (context) => SerialSearch()),
          );
        },
        child: Text('Serial Number',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[900],
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Text(
          'Check Documents',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900]),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 220.0,
                width: 287.0,
                child: Image(
                  image: AssetImage('assets/check_document.jpeg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.0),
              ),
              codeScannerButton,
              SizedBox(
                height: 30.0,
              ),
              serialNumberButton
            ],
          ),
        ),
      ),
    );
  }
}
