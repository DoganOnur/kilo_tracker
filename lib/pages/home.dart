import 'package:flutter/material.dart';


import 'graph_view.dart';
import 'history_view.dart';

class Home extends StatefulWidget {
  Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}
final iconList = <IconData>[
  Icons.auto_graph_outlined,
  Icons.history_toggle_off,

] ;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GraphScreen(),
      body: GraphView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 30,
        hoverElevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),

        onPressed: (){
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
  }
}
