import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisibility = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4.0,
        leading: Padding(
          padding: EdgeInsets.all(12),
          child: Image.network('https://d17ivq9b7rppb3.cloudfront.net/original/commons/new-ui-logo.png'),
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              MenuTile(title: 'Event'),
              MenuTile(title: 'Courses'),
              MenuTile(title: 'Academy'),
              MenuTile(title: 'Challenge'),
            ],
          ),
        ),
      ),
    );
  }
}

class  MenuTile extends StatelessWidget {

  final String title;
  MenuTile ({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.navigate_next, color : Colors.black),
    );
  }
}


