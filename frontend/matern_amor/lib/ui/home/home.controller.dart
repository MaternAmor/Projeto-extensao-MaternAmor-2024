// home_controller.dart
import 'package:get/get.dart';

class HomeController extends GetxController {
  void goToDonateMilk() {
    Get.toNamed('/sobre-fazer-doacao-de-leite-materno');
  }

  void goToDonateJars() {
    Get.toNamed('/sobre-fazer-doacao-de-potes');
  }

  void goToLearnAboutApp() {
    Get.toNamed('/sobre-app');
  }
}
