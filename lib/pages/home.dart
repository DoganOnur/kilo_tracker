import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_tracker/pages/record_add.dart';


import '../view-models/controller.dart';
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
int _selectIndeks=0;
List<Widget> body=[GraphView(),HistoryView()];


class _HomeState extends State<Home> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GraphScreen(),
      body: body[_selectIndeks],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 30,
        hoverElevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),

        onPressed: (){
          //_controller.recordAdd();
          Get.to(()=>RecordAdd());

        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        iconSize: 30,
        height: Get.height/12,
        backgroundColor: Colors.black,
       gapLocation:GapLocation.center,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        notchMargin: 15,
        notchSmoothness: NotchSmoothness.smoothEdge,
        activeIndex: _selectIndeks,
        onTap: (value){
          setState(() {
            _selectIndeks=value;

          });
        },
      ),
  );
  }
}
