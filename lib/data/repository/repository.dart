import 'dart:async';

import 'package:flutter_tech_test/data/model/detail_employee.dart';
import 'package:flutter_tech_test/data/model/list_employee.dart';
import 'package:flutter_tech_test/data/model/post_employee.dart';
import 'package:flutter_tech_test/data/model/put_employee.dart';

import '../model/delete_employee.dart';

abstract class Repository {
  FutureOr<ListEmployee?> getEmployee();

  FutureOr<PostEmployee?> postEmployee(
      String name, String nik, String position);

  FutureOr<PutEmployee?> putEmployee(String? name, String? nik, String? position);

  FutureOr<DetailEmployee?> getDetailEmployee(String id);

  FutureOr<DeleteEmployee?> deleteEmployee(String id);
}
