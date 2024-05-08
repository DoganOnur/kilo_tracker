import 'package:d_chart/commons/axis.dart';
import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/commons/viewport.dart';
import 'package:d_chart/ordinal/bar.dart';
import 'package:flutter/material.dart';
import '../view-models/controller.dart';
import 'package:get/get.dart';
class GraphWidget extends StatelessWidget {
  final Controller _controller = Get.put(Controller());
  int _selectedBarValue=0;
  @override
  Widget build(BuildContext context) {

    return Obx(() => Container(
      width: 400,
      height: 200,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 16 / 7,
            child: DChartBarO(
              groupList: [
                OrdinalGroup(
                  id: '1',
                  data: _controller.records
                      .map((record) => OrdinalData(
                      domain: '${record.note}', measure: record.weight))
                      .toList(),
                ),
              ],
              barLabelValue: (group, datum, index)=> "Değer:${datum.measure}",
              domainAxis: DomainAxis(
                ordinalViewport: OrdinalViewport('1', 5),
              ),

              allowSliding: true,
            ),
          ),
        ],
      ),
    ));
  }
}