//ini class untuk dependency injection
import 'package:get/get.dart';

import '../data/network.dart';
import '../data/repository/repository.dart';
import '../data/repository/repository_impl.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Network>(Network());
    Get.put<Repository>(RepositoryImpl());
  }
}
