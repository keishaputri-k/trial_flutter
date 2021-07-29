import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var name = 'Ivan';

    return MaterialApp(
      title: 'Welcome To Flutter',
      home:Scaffold
        (appBar: AppBar(
        title: Text('Welcome To Flutter'),
      ),
        body: Center(
          child: Text(
              'Halo $name!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,
              // color: Color.fromRGBO(66, 165, 245, 0.7)
                color: Colors.blue[200]
            ),
          ),
        ),
      ),
    );
  }
}
