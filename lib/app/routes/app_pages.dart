import 'package:get/get.dart';

import '../modules/chapters/bindings/chapters_binding.dart';
import '../modules/chapters/views/chapters_view.dart';
import '../modules/hadith_details/bindings/hadith_details_binding.dart';
import '../modules/hadith_details/views/hadith_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 789),
    ),
    GetPage(
      name: _Paths.CHAPTERS,
      page: () => const ChaptersView(),
      binding: ChaptersBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 789),
    ),
    GetPage(
      name: _Paths.HADITH_DETAILS,
      page: () => const HadithDetailsView(),
      binding: HadithDetailsBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 789),
    ),
  ];
}
