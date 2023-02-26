import 'package:dream_task/controller/constants/app_images.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> carsName = [
    'BMW',
    'Mercedes',
    'Audi',
    'Toyota',
    'BMW',
    'Mercedes',
    'Audi',
    'Toyota',
    'BMW',
    'Mercedes',
  ];

  final List<String> carCountry = [
    'Germany',
    'Japan',
    'American',
    'Europe',
    'Asia',
  ];
  final List<String> carsGridModels = [
    'BMW | 320i',
    'Mercedes | 320i',
    'Audi | 320i',
    'Mercedes | 320i',
    'Audi | 320i',
    'Toyota | 320i',
    'Mazda | 320i',
    'BMW | 220i',
    'Mercedes | 220i',
    'Audi | 220i',
  ];
  final List<String> carsImages = [
    AppImages.image1,
    AppImages.image11,
    AppImages.image1,
    AppImages.image11,
    AppImages.image1,
    AppImages.image11,
    AppImages.image1,
    AppImages.image11,
    AppImages.image1,
    AppImages.image11,
  ];
}

abstract class HomeRequests {}
