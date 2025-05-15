import 'package:get/get.dart';
import 'package:ird_task/app/data/providers/app_database.dart';

import '../../../data/services/database_service.dart';

class ChaptersController extends GetxController {

  final dbService = Get.find<DatabaseService>();
  late Book book;

  @override
  void onInit() {
    book = Get.arguments;
    super.onInit();
  }

}
