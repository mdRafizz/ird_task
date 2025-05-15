import 'package:get/get.dart';

import '../../../data/providers/app_database.dart';
import '../../../data/services/database_service.dart';

class HadithDetailsController extends GetxController {
  late AppDatabase db;

  late Book book;
  late ChapterData chapter;

  final hadiths = <(HadithData, SectionData)>[].obs;
  final isLoading = true.obs;

  init() async {
    db = Get.find<DatabaseService>().db;
    final args = Get.arguments;
    book = args['book'];
    chapter = args['chapter'];
    await fetchHadiths();
  }

  Future<void> fetchHadiths() async {
    isLoading.value = true;
    hadiths.value = await db.getHadithsByChapterId(
      book.id,
      chapter.chapterId,
    );
    isLoading.value = false;
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }
}

