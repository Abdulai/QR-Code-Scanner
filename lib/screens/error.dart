import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_rounded,
            size: 100,
            color: Colors.redAccent[700],
          ),
          SizedBox(height: 10.0),
          Text(
            'Data not available',
            style: TextStyle(color: Colors.red[900]),
          )
        ],
      ),
    );
  }
}
