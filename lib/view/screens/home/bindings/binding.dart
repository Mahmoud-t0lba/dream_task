import 'package:dream_task/view/screens/home/controllers/controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
