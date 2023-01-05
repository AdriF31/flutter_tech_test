import 'package:flutter_tech_test/base/base_controller.dart';
import 'package:flutter_tech_test/data/model/list_employee.dart';

class HomeController extends BaseController {
  bool isLoading = false;
  ListEmployee? employee = ListEmployee();

 @override
  void onInit() {
    getEmployee();
    super.onInit();
  }

  void getEmployee() async {
    isLoading = true;
    var response = await repository.getEmployee();
    employee = response;
    isLoading = false;
    update();
  }
}
