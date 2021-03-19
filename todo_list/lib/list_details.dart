import 'package:flutter/foundation.dart';

class Todolist {
  final int id;
  final String task;
  final DateTime date;

  Todolist({
    this.id,
    @required this.task,
    @required this.date,
  }) ;
}