import 'dart:convert';

import 'package:beyond_static_app/screens/allTheBrains/gethrsMessages.dart';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';

class ScrollTable {
  Future<Widget?> getTable(int id) async {
    String temp = await MessageLastDay().getAllMessages(id);
    var json = jsonDecode(temp);
    var columns = [
      JsonTableColumn("Field1", label: "Field1", defaultValue: "NA"),
      JsonTableColumn("Field2", label: "Field2", defaultValue: "NA"),
      JsonTableColumn("Field3", label: "Field3", defaultValue: "NA"),
      JsonTableColumn("Field4", label: "Field4", defaultValue: "NA"),
      JsonTableColumn("Field5", label: "Field5", defaultValue: "NA"),
    ];
    return JsonTable(
      json,
      columns: columns,
    );
  }
}
