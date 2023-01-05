import 'package:flutter/material.dart';
import 'package:flutter_tech_test/ui/create/create_employee_controller.dart';
import 'package:get/get.dart';

class CreateEmployeePage extends StatelessWidget {
  const CreateEmployeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateEmployee>(init:CreateEmployee(),builder:(controller)=>Scaffold(
      appBar: AppBar(title: Text('create'),),
    ));
  }
}
