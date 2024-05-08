import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kilo_tracker/pages/home.dart';
import 'package:get/get.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight Tracker',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white
          )

      ),
      home: Home(),
    );
  }
}


