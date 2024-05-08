import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view-models/controller.dart';
import '../widgets/graphWidget.dart';

class GraphView extends StatelessWidget {
  GraphView({super.key});
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Graph"),
            GraphWidget(),
          ],
        ),
      ),
    );
  }
}


