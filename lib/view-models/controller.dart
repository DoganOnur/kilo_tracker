import 'package:get/get.dart';
import 'package:kilo_tracker/models/record.dart';

class Controller extends GetxController{
var records= <Record>[
].obs;
void recordAdd(int weigth, DateTime time, String note){
  records.add(Record(weight: weigth,dateTime:time,note: note), );
 // print(records.length);
}
void deleteRecord(Record record){
  records.remove(record);
}
}