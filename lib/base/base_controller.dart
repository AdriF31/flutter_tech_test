import 'package:flutter_tech_test/data/repository/repository.dart';
import 'package:get/get.dart';

import '../data/network.dart';

class BaseController extends GetxController{
  Network networkCore = Get.find<Network>();
  Repository repository = Get.find<Repository>();
}