import 'package:flutter/material.dart';

class Notescreencontroller {
  List notedetails = [
    {
      "title": "someone",
      "des": "dkjjdj",
      "date": "12/03/24",
      "color": Colors.amber
    },
    // {
    //   "title": "athulya",
    //   "des": "dont know",
    //   "date": "15/03/24",
    //   "color": Colors.blue
    // },
  ];
  //function to add data
  void addata(String title, String des, String date) {
    notedetails.add(
      {"title": title, "des": des, "date": date, "color": Colors.red},
    );
  }

  //function to delete data
  void deletedata(int index) {
    notedetails.removeAt(index);
  }
  //function to edit data
}
