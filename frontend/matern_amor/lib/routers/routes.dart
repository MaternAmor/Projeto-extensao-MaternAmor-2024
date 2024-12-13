import 'package:get/get.dart';
import 'package:matern_amor/routers/pages.dart';
import 'package:matern_amor/ui/requestDonation/requestDonation.page.dart';

List<GetPage> pathsRouters = [
  GetPage(
    name: '/splashScreen',
    page: () => const SplashScreenPage(),
  ),
  GetPage(
    name: '/requestDonationPageI',
    page: () => const RequestDonationPage(
      page: 0,
    ),
  ),
  GetPage(
    name: '/requestDonationPageII',
    page: () => const RequestDonationPage(
      page: 1,
    ),
  ),
  GetPage(
    name: '/',
    page: () => const HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/settings',
    page: () => const SettingsPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/login',
    page: () => const LoginPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/sobre-app',
    page: () => const AboutAppMobile(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/register',
    page: () => const RegisterPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/onboarding/1',
    page: () => OnboardingPage(page: 0),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/onboarding/2',
    page: () => OnboardingPage(page: 1),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/onboarding/3',
    page: () => OnboardingPage(page: 2),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/sobre-fazer-doacao-de-leite-materno',
    page: () => AboutFromPage(page: 0),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/sobre-fazer-doacao-de-potes',
    page: () => AboutFromPage(page: 1),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: '/doacao-potes',
    page: () => const BottleDonationPage(),
    transition: Transition.rightToLeft,
  ),
];
