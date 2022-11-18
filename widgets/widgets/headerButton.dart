import 'package:flutter/material.dart';

Widget headerbutton({
  required String buttontext,
  required IconData buttonicon,
  required void Function() buttonaction,
  required Color buttoncolor,
}) {
  return ElevatedButton(onPressed: buttonaction ,
    child: Icon(
    buttonicon,
    color: buttoncolor,
          ),
      );
}