import 'package:flutter/material.dart';

import 'base_controller.dart';

class CostCenterController extends BaseController {
  final costCenterController = TextEditingController();

  String? selectedValue;

  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("USA"), value: "USA"),
    DropdownMenuItem(child: Text("Canada"), value: "Canada"),
    DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
    DropdownMenuItem(child: Text("England"), value: "England"),
  ];
  onSubmit() {}
}
