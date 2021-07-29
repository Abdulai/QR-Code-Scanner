import 'package:flutter/material.dart';

class SerialSearch extends StatefulWidget {
  const SerialSearch({Key key}) : super(key: key);

  @override
  _SerialSearchState createState() => _SerialSearchState();
}

class _SerialSearchState extends State<SerialSearch> {
  @override
  Widget build(BuildContext context) {
    // Serial Number Field
    final serialNumberSearchField = TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            color: Colors.blueAccent,
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Serial number",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    // Search Button
    final searchButton = Material(
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
        child: Text('Search',
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
          'Search serial number',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900]),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              serialNumberSearchField,
              Padding(padding: EdgeInsets.only(top: 30.0)),
              searchButton,
            ],
          ),
        ),
      ),
    );
  }
}
