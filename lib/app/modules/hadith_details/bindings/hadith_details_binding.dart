import 'package:get/get.dart';

import '../controllers/hadith_details_controller.dart';

class HadithDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HadithDetailsController>(
      () => HadithDetailsController(),
    );
  }
}
