import 'dart:collection';
import 'dart:convert';

import 'package:beyond_static_app/screens/allTheBrains/deleteBrain.dart';
import 'package:beyond_static_app/screens/allTheBrains/gethrsMessages.dart';
import 'package:beyond_static_app/screens/allTheBrains/scrollBrain.dart';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';

class ScrollTable {
  Future<List> getField1(int id) async {
    MessageLastDay().getAllMessages(id);
    MessageLastDay().getAllMessages(id);
    LinkedHashMap projects = await SelectedProject().getData(id);
    return [projects["Field1Name"], projects["Field2Name"], projects["Field3Name"], projects["Field4Name"], projects["Field5Name"]];
  }

  // Future<String> getField1(int id) async {
  //   MessageLastDay().getAllMessages(id);
  //   LinkedHashMap projects = await SelectedProject().getData(id);
  //   return projects["Field1Name"];
  // }

  Future<Widget> getTable(int id) async {
    String temp = await MessageLastDay().getAllMessages(id);
    var thatLink = await getField1(id);

    for(var i=0; i<thatLink.length; i++)
      {
        if(thatLink[i] == "")
          {
            thatLink[i] = "--";
          }
      }

    var json = jsonDecode(temp);
    var columns = [

      JsonTableColumn("Field1", label: thatLink[0], defaultValue: "NA"),
      JsonTableColumn("Field2", label: thatLink[1], defaultValue: "NA"),
      JsonTableColumn("Field3", label: thatLink[2], defaultValue: "NA"),
      JsonTableColumn("Field4", label: thatLink[3], defaultValue: "NA"),
      JsonTableColumn("Field5", label: thatLink[4], defaultValue: "NA"),

    ];
    return JsonTable(
      json,
      tableCellBuilder: (value) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        );
      },
      columns: columns,
    );
  }
}
