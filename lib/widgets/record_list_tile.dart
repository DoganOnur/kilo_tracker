import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kilo_tracker/models/record.dart';

import '../view-models/controller.dart';

class RecordListTile extends StatelessWidget {
  final Record record;
  final Controller _controller= Get.put(Controller());

  RecordListTile({Key? key,required this.record}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10,top: 10),
      child: ListTile(
        leading: Text(DateFormat("dd MMM yyyy ").format(record.dateTime),style: TextStyle(fontSize: 15),),
        title: Center(child: Text("${record.weight} kg",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.grey,)),
            IconButton(onPressed:(){
              _controller.deleteRecord(record);
            }, icon: Icon(Icons.delete,color: Colors.red,)),

          ],
        ),
      ),
    );
  }
}
