import 'package:dream_task/view/screens/car_details/views/car_details_imports.dart';
import 'package:dream_task/view/screens/home/bindings/binding.dart';
import 'package:dream_task/view/screens/home/views/home_imports.dart';
import 'package:get/get.dart';

part 'app_pages.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.carDetails,
      page: () => const CarDetailsView(),
      // binding: CarDetailsBindings(),
    ),
  ];
}
