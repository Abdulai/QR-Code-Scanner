import 'package:flutter/material.dart';

class Errors extends StatelessWidget {
  const Errors({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Text(
          'Error',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900]),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(bottom: 170)),
              Image(
                image: AssetImage('assets/error.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Incorrect data format!',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
