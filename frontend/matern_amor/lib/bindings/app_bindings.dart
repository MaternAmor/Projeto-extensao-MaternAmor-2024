import 'package:get/get.dart';
import 'package:matern_amor/ui/bottle_donation/bottleDonation.controller.dart';
import 'package:matern_amor/ui/home/home.controller.dart';
import 'package:matern_amor/ui/login/login.controller.dart';
import 'package:matern_amor/ui/onboarding/onboarding.controller.dart';
import 'package:matern_amor/ui/register/register.controller.dart';
import 'package:matern_amor/ui/requestDonation/requestDonation.controller.dart';
import 'package:matern_amor/ui/settings/settings.controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Usamos lazyPut para controllers que não apresentam problemas de reentrada
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RegisterController>(() => RegisterController());
    Get.lazyPut<OnboardingController>(() => OnboardingController());
    Get.lazyPut<SettingsController>(() => SettingsController());
    Get.lazyPut<HomeController>(() => HomeController());

    // Usamos create para recriar o controller a cada entrada na página
    Get.create<BottleDonationController>(() => BottleDonationController());
    Get.create<RequestDonationController>(() => RequestDonationController());
  }
}
