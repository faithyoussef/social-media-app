import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/sections/statusSection.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void post(){
    print("post");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          // elevation: 0,
          title: Text(
            "faceSettings",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body: ListView(
          children: [
      SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          StatusSection(),
            ElevatedButton(onPressed:(){
              post();
            } ,
                child: Text("post") ),
    ],),
    ),
    ],));
  }
}
