import 'dart:collection';
import 'package:beyond_static_app/screens/allTheBrains/projectBrain.dart';
import 'package:beyond_static_app/screens/profileCards/cardContent.dart';
import 'package:beyond_static_app/screens/profileCards/reusableCard.dart';
import 'package:flutter/material.dart';

class CardCreator {
  List<Widget> cards = [];
  List ids= [];
  late int length;

  Future<List> getAllCards()  async {

    var projects = await ProjectOptions().getProjects();
    this.length = projects.length;
    for (int i = 0; i < length; i++) {
      LinkedHashMap project = projects[i];
      int id = project['id'] as int;
      String stateText;
      Color clrcard = project['ProjectStatus'] ? Color(0xFFFF007C) : Color(0xFF7D00B5);
      if(clrcard == Color(0xFFFF007C)){
        stateText = 'Active';
      }
      else{
        stateText = 'Inactive';
      }
      String projectName = project['ProjectName'] as String;
      ids.add(id);
      cards.add(
        ReusableCard(
          colour: clrcard,
          cardChild: CardContent(
            title: projectName,
            state: stateText,
          ),
          id: id,
        ),
      );
    }
    return cards;
  }

  Future<int> getLength()async {
    var projects = await ProjectOptions().getProjects();
    this.length = projects.length;
    return length;
  }
}
