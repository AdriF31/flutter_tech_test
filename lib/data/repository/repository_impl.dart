import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_tech_test/data/model/delete_employee.dart';
import 'package:flutter_tech_test/data/model/detail_employee.dart';
import 'package:flutter_tech_test/data/model/list_employee.dart';
import 'package:flutter_tech_test/data/model/post_employee.dart';
import 'package:flutter_tech_test/data/network.dart';
import 'package:flutter_tech_test/data/repository/repository.dart';
import 'package:get/get.dart';

import '../../const/const.dart';
import '../model/put_employee.dart';

class RepositoryImpl implements Repository {
  final network = Get.find<Network>();

  @override
  FutureOr<ListEmployee?> getEmployee() async {
    try {
      var response = await network.dio.get(baseUrl);
      return ListEmployee.fromJson(response.data);
    } on DioError catch (e) {
      return ListEmployee.fromJson(e.response?.data);
    }
  }

  @override
  FutureOr<DetailEmployee?> getDetailEmployee(String id) async {
    try {
      var response = await network.dio.get('$baseUrl/$id');
      return DetailEmployee.fromJson(response.data);
    } on DioError catch (e) {
      return DetailEmployee.fromJson(e.response?.data);
    }
  }

  @override
  FutureOr<DeleteEmployee?> deleteEmployee(String id) async {
    try {
      var response = await network.dio.delete('$baseUrl/$id');
      return DeleteEmployee.fromJson(response.data);
    } on DioError catch (e) {
      return DeleteEmployee.fromJson(e.response?.data);
    }
  }

  @override
  FutureOr<PostEmployee?> postEmployee(String name, String nik, String position) async{
    try {
      var response = await network.dio.post(baseUrl,data:{
        'name':name,
        'nik':nik,
        'position':position
      });
      return PostEmployee.fromJson(response.data);
    } on DioError catch (e) {
      return PostEmployee.fromJson(e.response?.data);
    }
  }
  @override
  FutureOr<PutEmployee?> putEmployee(String? name, String? nik, String? position) async{
    try {
      var response = await network.dio.post(baseUrl,data:{
        'name':name,
        'nik':nik,
        'position':position
      });
      return PutEmployee.fromJson(response.data);
    } on DioError catch (e) {
      return PutEmployee.fromJson(e.response?.data);
    }
  }
}
