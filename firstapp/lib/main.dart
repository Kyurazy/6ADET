import 'package:flutter/material.dart';

void main() {
  runApp(const Center(child:Text(
      'Hi Carl Paldeng!', 
      textDirection: TextDirection.ltr, 
      style: TextStyle(fontSize: 40.0, 
      fontWeight: FontWeight.bold, 
      color: const Color.fromARGB(255, 68, 6, 255),
      fontFamily: 'Roboto_Condensed'
      ),
  textAlign: TextAlign.center)
  ));

}
