import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Screen "),
        centerTitle: true,
      ),
      body: Center(
        child:ListView(
          children: [
            Text("History"),

          ],
        ),
      ),
    );
  }
}

