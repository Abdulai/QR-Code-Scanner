import 'package:flutter/material.dart';

class Companies extends StatelessWidget {
  const Companies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[900],
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: Text(
          'List of Companies',
          style: TextStyle(
              color: Colors.blue[900],
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
