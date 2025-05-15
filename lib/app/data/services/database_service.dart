import 'package:get/get.dart';
import 'package:ird_task/app/data/providers/app_database.dart';

class DatabaseService extends GetxService {
  late final AppDatabase db;

  @override
  void onInit() {
    db = AppDatabase();
    super.onInit();
  }

  Future<DatabaseService> init() async => this;
}
