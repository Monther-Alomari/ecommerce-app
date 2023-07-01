import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Details.dart';
import 'package:untitled/Forget.dart';
import 'package:untitled/Hello.dart';
import 'package:untitled/Home.dart';
import 'package:untitled/Register.dart';
import 'package:untitled/Success.dart';
import 'package:untitled/Tokoyo.dart';
import 'package:untitled/logIn.dart';
import 'package:untitled/Complete.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:HomeScreen(),
    );
  }
}
