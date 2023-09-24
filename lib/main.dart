import 'package:collegeapp/collegeScreen.dart';
import 'package:collegeapp/tapBarScreens/hostelScreen.dart';
import 'package:collegeapp/topColleges.dart';
import 'package:flutter/material.dart';
import 'dashBoardScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: DashBoardScreen()
    );
  }
}
