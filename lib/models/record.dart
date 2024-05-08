import 'package:freezed_annotation/freezed_annotation.dart';

part 'record.freezed.dart';
part 'record.g.dart';
@freezed
class Record with _$Record{
/*  final int weight;
  final DateTime dateTime;
  final String? photoUrl;
  final String? note;
*/


  factory Record({required int weight, required DateTime dateTime, String? photoUrl, String? note})= _Record;
  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);

}