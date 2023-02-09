import 'package:covid_19_corona_cases/view/screens/Home_Page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Home_Page(),
      },
    )
  );
}