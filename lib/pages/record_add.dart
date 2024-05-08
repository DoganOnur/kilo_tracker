import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

import '../view-models/controller.dart';

class RecordAdd extends StatefulWidget {
  const RecordAdd({super.key});
  @override
  State<RecordAdd> createState() => _RecordAddState();
}
final Controller _controller= Get.find();
TextEditingController _kontrol = TextEditingController();
class _RecordAddState extends State<RecordAdd> {
  int _selectedValue = 70;
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RECORD ADD"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.weightScale,
                      size: 40,
                    ),
                    NumberPicker(
                        axis: Axis.horizontal,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minValue: 40,
                        maxValue: 130,
                        value: _selectedValue,
                        onChanged: (value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        })
                  ],
                ),
                Positioned(
                    top: Get.height / 27,
                    left: Get.width / 2.3,
                    child: Icon(FontAwesomeIcons.chevronUp)),
              ]),
              SizedBox(
                height: Get.height / 12,
              ),
              GestureDetector(
                onTap: () async {
                  time = await showDatePicker(
                      context: context,
                      initialDate: time,
                      firstDate: time.subtract(Duration(days: 30)),
                      lastDate: time.add(Duration(days: 30))) ?? time;
                  setState(() {

                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FontAwesomeIcons.calendar,
                        size: 45,
                      ),
                      Expanded(
                          child: Text(
                        DateFormat("dd MMM  yyy").format(time),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Güne özel not giriniz',

                    border: InputBorder.none, // Alt çizgiyi kaldırır
                  ),
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                  maxLength: 20,
                  textInputAction: TextInputAction.none,
                  style: TextStyle(fontSize: 15),
                  controller:_kontrol,
                ),
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    String deger = _kontrol.text;
                    _controller.recordAdd(_selectedValue,time,deger);
                    _kontrol.clear();
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    "Saved Record",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
