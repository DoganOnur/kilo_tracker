import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../view-models/controller.dart';

class RecordListTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(DateFormat("EEE MMMM yyyy ").format(DateTime.now())),
      title: Text("80"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,)),

        ],
      ),
    );
  }
}
