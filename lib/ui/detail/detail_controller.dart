import 'package:flutter_tech_test/base/base_controller.dart';
import 'package:flutter_tech_test/data/model/detail_employee.dart';
import 'package:get/get.dart';

class DetailController extends BaseController{
  bool isLoading = false;
  DetailEmployee? detailEmployee = DetailEmployee();

  @override
  void onInit() {
    getDetailEmployee();
    super.onInit();
  }
  void getDetailEmployee() async {
    isLoading = true;
    var response = await repository.getDetailEmployee(Get.arguments);
    detailEmployee = response;
    isLoading = false;
    update();
  }}