import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_tracker/widgets/record_list_tile.dart';
import '../view-models/controller.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}
final Controller _controller= Get.put(Controller());

class _HistoryViewState extends State<HistoryView> {

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: Text("History "),
        actions: [
          IconButton(onPressed:null, icon: Icon(Icons.add)),
        ],
        centerTitle: true,
      ),
      body:  _controller.records.isEmpty ?
      Center(
        child: Text("Lütfen kayıt giriniz"),
      ):
      ListView(
        physics: BouncingScrollPhysics(),
        children:
        _controller.records.map((record) => RecordListTile(record:record)).toList(),


      ),


    ));
  }
}