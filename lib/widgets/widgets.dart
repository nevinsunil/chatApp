import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
    labelStyle: TextStyle(
      color: Color.fromARGB(255, 43, 43, 43),
      fontWeight: FontWeight.w300,
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffee7b64), width: 2)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffee7b64), width: 2)),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffee7b64), width: 2)));

void nextScreen(context, Page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Page));
}

void nextScreenReplace(context, Page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => Page));
}

void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 14),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: "OK",
      onPressed: () {},
      textColor: Colors.white,
    ),
  ));
}
