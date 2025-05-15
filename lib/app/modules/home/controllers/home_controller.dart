import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../data/providers/app_database.dart';
import '../../../data/services/database_service.dart';

class HomeController extends GetxController {

  final dbService = Get.find<DatabaseService>().db;

  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
