import 'package:flutter/material.dart';

class GraphView extends StatelessWidget {
  const GraphView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph Screen "),
        centerTitle: true,

      ),
      body: Center(
        child: Text("Graph Screen"),
      ),
    );
  }
}

